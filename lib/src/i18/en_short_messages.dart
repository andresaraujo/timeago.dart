library timeago.en_short_messages;

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'messages';

  static prefixAgo() => "";
  static prefixFromNow() => "";
  static suffixAgo() => "";
  static suffixFromNow() => "";

  static lessThanOneMinute() => "now";
  static aboutAMinute() => "1 min";
  static minutes(minutes) =>
      "${Intl.plural(minutes, zero: '', one: '${minutes} min', other: '${minutes} min')}";
  static aboutAnHour() => "~1 h";
  static hours(hours) =>
      "${Intl.plural(hours, zero: '', one: '${hours} h', other: '${hours} h')}";
  static aDay() => "~1 d";
  static days(days) =>
      "${Intl.plural(days, zero: '', one: '${days} d', other: '${days} d')}";
  static aboutAMonth() => "~1 mo";
  static months(months) =>
      "${Intl.plural(months, zero: '', one: '${months} mo', other: '${months} mo')}";
  static aboutAYear() => "~1 yr";
  static years(years) =>
      "${Intl.plural(years, zero: '', one: '${years} yr', other: '${years} yr')}";

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
