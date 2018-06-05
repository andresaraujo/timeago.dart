library messages_all;

import 'dart:async';
import 'package:intl/message_lookup_by_library.dart';
import 'package:intl/src/intl_helpers.dart';
import 'package:intl/intl.dart';

import 'de_messages.dart' as de;
import 'en_short_messages.dart' as en_short;
import 'es_messages.dart' as es;
import 'es_short_messages.dart' as es_short;
import 'fa_messages.dart' as fa;
import 'fr_messages.dart' as fr;
import 'it_messages.dart' as it;
import 'ja_messages.dart' as ja;
import 'pt_BR_messages.dart' as pt_br;
import 'pt_BR_short_messages.dart' as pt_br_short;
import 'ru_messages.dart' as ru;
import 'zh_CN_messages.dart' as zh_cn;
import 'zh_messages.dart' as zh;

typedef Future<dynamic> LibraryLoader();
Map<String, LibraryLoader> _deferredLibraries = {
  'de': () => new Future.value(null),
  'en_short': () => new Future.value(null),
  'es': () => new Future.value(null),
  'es_short': () => new Future.value(null),
  'fa': () => new Future.value(null),
  'fr': () => new Future.value(null),
  'it': () => new Future.value(null),
  'ja': () => new Future.value(null),
  'pt_BR': () => new Future.value(null),
  'pt_BR_short': () => new Future.value(null),
  'ru': () => new Future.value(null),
  'zh_CN': () => new Future.value(null),
  'zh': () => new Future.value(null)
};

MessageLookupByLibrary _findExact(localeName) {
  switch (localeName) {
    case 'de':
      return de.messages;
    case 'en_short':
      return en_short.messages;
    case 'es':
      return es.messages;
    case 'es_short':
      return es_short.messages;
    case 'fa':
      return fa.messages;
    case 'fr':
      return fr.messages;
    case 'it':
      return it.messages;
    case 'ja':
      return ja.messages;
    case 'pt_BR':
      return pt_br.messages;
    case 'pt_BR_short':
      return pt_br_short.messages;
    case 'ru':
      return ru.messages;
    case 'zh_CN':
      return zh_cn.messages;
    case 'zh':
    case 'zh_TW':
    case 'zh_HK':
      return zh.messages;
    default:
      return null;
  }
}

/// User programs should call this before using [localeName] for messages.
Future initializeMessages(String localeName) {
  var lib = _deferredLibraries[Intl.canonicalizedLocale(localeName)];
  var load = lib == null ? new Future.value(false) : lib();
  return load.then((_) {
    initializeInternalMessageLookup(() => new CompositeMessageLookup());
    messageLookup.addLocale(localeName, _findGeneratedMessagesFor);
  });
}

bool _messagesExistFor(String locale) {
  var messages;
  try {
    messages = _findExact(locale);
  } catch (e) {}
  return messages != null;
}

MessageLookupByLibrary _findGeneratedMessagesFor(locale) {
  var actualLocale =
      Intl.verifiedLocale(locale, _messagesExistFor, onFailure: (_) => null);
  if (actualLocale == null) return null;
  return _findExact(actualLocale);
}
