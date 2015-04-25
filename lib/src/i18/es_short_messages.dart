library timeago.es_short_messages;

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'messages';

  static prefixAgo() => "";
  static prefixFromNow() => "";
  static suffixAgo() => "";
  static suffixFromNow() => "";

  static lessThanOneMinute() => "~1m";
  static aboutAMinute() => "1m";
  static minutes(minutes) =>
      "${Intl.plural(minutes, zero: '', one: '${minutes}m', other: '${minutes}m')}";
  static aboutAnHour() => "~1h";
  static hours(hours) =>
      "${Intl.plural(hours, zero: '', one: '${hours}h', other: '${hours}h')}";
  static aDay() => "~1d";
  static days(days) =>
      "${Intl.plural(days, zero: '', one: '${days}d', other: '${days}d')}";
  static aboutAMonth() => "~1me";
  static months(months) =>
      "${Intl.plural(months, zero: '', one: '${months}me', other: '${months}me')}";
  static aboutAYear() => "~1a";
  static years(years) =>
      "${Intl.plural(years, zero: '', one: '${years}a', other: '${years}a')}";

  static wordSeparator() => " ";

  final messages = const {
    "prefixAgo": prefixAgo,
    "prefixFromNow": prefixFromNow,
    "suffixAgo": suffixAgo,
    "suffixFromNow": suffixFromNow,
    "lessThanOneMinute": lessThanOneMinute,
    "aboutAMinute": aboutAMinute,
    "minutes": minutes,
    "aboutAnHour": aboutAnHour,
    "hours": hours,
    "aDay": aDay,
    "days": days,
    "aboutAMonth": aboutAMonth,
    "months": months,
    "aboutAYear": aboutAYear,
    "years": years,
    "wordSeparator": wordSeparator
  };
}
