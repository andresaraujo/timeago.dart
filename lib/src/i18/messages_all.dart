library messages_all;

import 'dart:async';
import 'package:intl/message_lookup_by_library.dart';
import 'package:intl/src/intl_helpers.dart';
import 'package:intl/intl.dart';

import 'en_short_messages.dart' deferred as en_short;
import 'es_messages.dart' deferred as es;
import 'es_short_messages.dart' deferred as es_short;

Map<String, Function> _deferredLibraries = {
  'en_short': () => en_short.loadLibrary(),
  'es': () => es.loadLibrary(),
  'es_short': () => es_short.loadLibrary()
};

MessageLookupByLibrary _findExact(localeName) {
  switch (localeName) {
    case 'en_short':
      return en_short.messages;
    case 'es':
      return es.messages;
    case 'es_short':
      return es_short.messages;
    default:
      return null;
  }
}

/** User programs should call this before using [localeName] for messages.*/
Future initializeMessages(String localeName) {
  initializeInternalMessageLookup(() => new CompositeMessageLookup());
  var canonicalizedLocale = Intl.canonicalizedLocale(localeName);
  var lib = _deferredLibraries[canonicalizedLocale];
  var load = lib == null ? new Future.value(false) : lib();
  return load.then(
      (_) => messageLookup.addLocale(localeName, _findGeneratedMessagesFor));
}

MessageLookupByLibrary _findGeneratedMessagesFor(locale) {
  var actualLocale = Intl.verifiedLocale(locale, (x) => _findExact(x) != null,
      onFailure: (_) => null);
  if (actualLocale == null) return null;
  return _findExact(actualLocale);
}
