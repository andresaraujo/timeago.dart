import 'package:timeago/src/messages/en_messages.dart';
import 'package:timeago/src/messages/es_messages.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

Map<String, LookupMessages> _lookupMessagesMap = {
  'en': EnMessages(),
  'en_short': EnShortMessages(),
  'es': EsMessages(),
  'es_short': EsShortMessages(),
};

/// Sets a [locale] with the provided [lookupMessages] to be available when
/// using the [format] function.
///
/// Example:
/// ```dart
/// setLocaleMessages('fr', FrMessages())
/// ```
///
/// If you want to define locale message implement [LookupMessages] interface
/// with the desired messages
///
void setLocaleMessages(String locale, LookupMessages lookupMessages) {
  assert(locale != null, '[locale] must not be null');
  assert(lookupMessages != null, '[lookupMessages] must not be null');
  _lookupMessagesMap[locale] = lookupMessages;
}

/// Formats provided [since] to a fuzzy time like 'a moment ago'
///
/// - If [locale] is passed will look for message for that locale, if you want
///   to add or override locales use [setLocaleMessages]. Defaults to 'en'
/// - If [until] is passed this will be the point of reference for calculating
///   the elapsed time. Defaults to DateTime.now()
/// - If [allowFromNow] is passed, format will use the From prefix, ie. a date
///   5 minutes from now in 'en' locale will display as "5 minutes from now"
String format(DateTime since, {
  String locale = 'en',
  DateTime until,
  bool allowFromNow = true,
  String intercept(Duration duration, {DateTime since}),
}) {
  final messages = _lookupMessagesMap[locale] ?? EnMessages();
  final _until = until ?? DateTime.now();
  final duration = _until.difference(since);

  if (intercept != null) { // Put more params into LookupMessage as well?
    final intercepted = intercept(duration, since: since);
    if (intercepted != null) {
      return intercepted;
    }
  }

  String prefix, suffix;

  if (allowFromNow && duration.isNegative) {
    prefix = messages.prefixFromNow();
    suffix = messages.suffixFromNow();
  } else {
    prefix = messages.prefixAgo();
    suffix = messages.suffixAgo();
  }

  final seconds = duration.inSeconds.abs();
  final minutes = duration.inMinutes.abs();
  final hours = duration.inHours.abs();
  final days = duration.inDays.abs();
  final months = days ~/ 30; // FIXME: it's not accuracy, should determine by DateTime instead, but good enough for now
  final years = days ~/ 365; // FIXME: it's not accuracy, should determine by DateTime instead, but good enough for now

  String result;
  if (seconds < 45)
    result = messages.lessThanOneMinute(seconds);
  else if (seconds < 90)
    result = messages.aboutAMinute(minutes);
  else if (minutes < 45)
    result = messages.minutes(minutes);
  else if (minutes < 90)
    result = messages.aboutAnHour(minutes);
  else if (hours < 24)
    result = messages.hours(hours);
  else if (hours < 48)
    result = messages.aDay(hours);
  else if (days < 30)
    result = messages.days(days);
  else if (days < 60)
    result = messages.aboutAMonth(days);
  else if (days < 365)
    result = messages.months(months);
  else if (years < 2)
    result = messages.aboutAYear(months);
  else
    result = messages.years(years);

  return [prefix, result, suffix]
      .where((str) => str != null && str.isNotEmpty)
      .join(messages.wordSeparator());
}
