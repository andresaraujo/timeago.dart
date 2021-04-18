import 'package:timeago/src/messages/de_messages.dart';
import 'package:timeago/src/messages/en_messages.dart';
import 'package:timeago/src/messages/az_messages.dart';
import 'package:timeago/src/messages/es_messages.dart';
import 'package:timeago/src/messages/fr_messages.dart';
import 'package:timeago/src/messages/gr_messages.dart';
import 'package:timeago/src/messages/ja_messages.dart';
import 'package:timeago/src/messages/km_messages.dart';
import 'package:timeago/src/messages/id_messages.dart';
import 'package:timeago/src/messages/pt_br_messages.dart';
import 'package:timeago/src/messages/zh_cn_messages.dart';
import 'package:timeago/src/messages/zh_messages.dart';
import 'package:timeago/src/messages/it_messages.dart';
import 'package:timeago/src/messages/fa_messages.dart';
import 'package:timeago/src/messages/ru_messages.dart';
import 'package:timeago/src/messages/nl_messages.dart';
import 'package:timeago/src/messages/da_messages.dart';
import 'package:timeago/src/messages/tr_messages.dart';
import 'package:timeago/src/messages/pl_messages.dart';
import 'package:timeago/src/messages/th_messages.dart';
import 'package:timeago/src/messages/mn_messages.dart';
import 'package:timeago/src/messages/nb_no_messages.dart';
import 'package:timeago/src/messages/nn_no_messages.dart';
import 'package:timeago/src/messages/ku_messages.dart';
import 'package:timeago/src/messages/ar_messages.dart';
import 'package:timeago/src/messages/ko_messages.dart';
import 'package:timeago/src/messages/vi_messages.dart';
import 'package:timeago/src/messages/ta_messages.dart';
import 'package:timeago/src/messages/ro_messages.dart';
import 'package:timeago/src/messages/sv_messages.dart';
import 'package:timeago/src/messages/hi_messages.dart';
import 'package:timeago/src/messages/dv_messages.dart';
import 'package:timeago/src/messages/ca_messages.dart';
import 'package:timeago/src/messages/he_messages.dart';
import 'package:timeago/src/messages/ms_my_messages.dart';
import 'package:timeago/src/messages/cs_messages.dart';
import 'package:timeago/src/messages/uk_messages.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

String _default = 'en';

Map<String, LookupMessages> _lookupMessagesMap = {
  'ar': ArMessages(),
  'az': AzMessages(),
  'ca': CaMessages(),
  'cs': CsMessages(),
  'da': DaMessages(),
  'de': DeMessages(),
  'dv': DvMessages(),
  'en': EnMessages(),
  'en_short': EnShortMessages(),
  'es': EsMessages(),
  'es_short': EsShortMessages(),
  'fa': FaMessages(),
  'el': GrMessages(),
  'he': HeMessages(),
  'hi': HiMessages(),
  'id': IdMessages(),
  'it': ItMessages(),
  'ja': JaMessages(),
  'km': KmMessages(),
  'ko': KoMessages(),
  'ku': KuMessages(),
  'mn': MnMessages(),
  'ms': MsMyMessages(),
  'nb': NbNoShortMessages(),
  'nl': NlMessages(),
  'nn': NnNoShortMessages(),
  'pl': PlMessages(),
  'pt-br': PtBrMessages(),
  'ro': RoMessages(),
  'ru': RuMessages(),
  'sv': SvMessages(),
  'ta': TaMessages(),
  'th': ThMessages(),
  'tr': TrMessages(),
  'uk': UkMessages(),
  'vi': ViMessages(),
  'zh': ZhCnMessages(),
  'zh-cn': ZhCnMessages(),
  'zh-tw': ZhMessages(),
};

/// Sets the default [locale]. By default it is `en`.
///
/// Example
/// ```
/// setLocaleMessages('fr', FrMessages());
/// setDefaultLocale('fr');
/// ```
void setDefaultLocale(String locale) {
  assert(_lookupMessagesMap.containsKey(locale),
      '[locale] must be a registered locale');
  _default = locale;
}

/// Sets a [locale] with the provided [lookupMessages] to be available when
/// using the [format] function.
///
/// Example:
/// ```dart
/// setLocaleMessages('fr', FrMessages());
/// ```
///
/// If you want to define locale message implement [LookupMessages] interface
/// with the desired messages
///
void setLocaleMessages(String locale, LookupMessages lookupMessages) {
  _lookupMessagesMap[locale] = lookupMessages;
}

/// Formats provided [date] to a fuzzy time like 'a moment ago'
///
/// - If [locale] is passed will look for message for that locale, if you want
///   to add or override locales use [setLocaleMessages]. Defaults to 'en'
/// - If [clock] is passed this will be the point of reference for calculating
///   the elapsed time. Defaults to DateTime.now()
/// - If [allowFromNow] is passed, format will use the From prefix, ie. a date
///   5 minutes from now in 'en' locale will display as "5 minutes from now"
String format(DateTime date,
    {String? locale, DateTime? clock, bool allowFromNow = false}) {
  final _locale = locale ?? _default;
  final _allowFromNow = allowFromNow;
  final messages = _lookupMessagesMap[_locale] ?? EnMessages();
  final _clock = clock ?? DateTime.now();
  var elapsed = _clock.millisecondsSinceEpoch - date.millisecondsSinceEpoch;

  String prefix, suffix;

  if (_allowFromNow && elapsed < 0) {
    elapsed = date.isBefore(_clock) ? elapsed : elapsed.abs();
    prefix = messages.prefixFromNow();
    suffix = messages.suffixFromNow();
  } else {
    prefix = messages.prefixAgo();
    suffix = messages.suffixAgo();
  }

  final num seconds = elapsed / 1000;
  final num minutes = seconds / 60;
  final num hours = minutes / 60;
  final num days = hours / 24;
  final num months = days / 30;
  final num years = days / 365;

  String result;
  if (seconds < 45) {
    result = messages.lessThanOneMinute(seconds.round());
  } else if (seconds < 90) {
    result = messages.aboutAMinute(minutes.round());
  } else if (minutes < 45) {
    result = messages.minutes(minutes.round());
  } else if (minutes < 90) {
    result = messages.aboutAnHour(minutes.round());
  } else if (hours < 24) {
    result = messages.hours(hours.round());
  } else if (hours < 48) {
    result = messages.aDay(hours.round());
  } else if (days < 30) {
    result = messages.days(days.round());
  } else if (days < 60) {
    result = messages.aboutAMonth(days.round());
  } else if (days < 365) {
    result = messages.months(months.round());
  } else if (years < 2) {
    result = messages.aboutAYear(months.round());
  } else {
    result = messages.years(years.round());
  }

  return [prefix, result, suffix]
      .where((str) => str.isNotEmpty)
      .join(messages.wordSeparator());
}
