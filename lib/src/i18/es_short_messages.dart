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

  static lessThanOneMinute() => "ahora";
  static aboutAMinute() => "1 min";
  static minutes(minutes) =>
      "${Intl.plural(minutes, zero: '', one: '${minutes} min', other: '${minutes} min')}";
  static aboutAnHour() => "~1 hr";
  static hours(hours) =>
      "${Intl.plural(hours, zero: '', one: '${hours} hr', other: '${hours} hr')}";
  static aDay() => "~1 día";
  static days(days) =>
      "${Intl.plural(days, zero: '', one: '${days} día', other: '${days} día')}";
  static aboutAMonth() => "~1 mes";
  static months(months) =>
      "${Intl.plural(months, zero: '', one: '${months} meses', other: '${months} meses')}";
  static aboutAYear() => "~1 año";
  static years(years) =>
      "${Intl.plural(years, zero: '', one: '${years} año', other: '${years} año')}";

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
