library timeago.de;

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'messages';

  static prefixAgo() => "vor";
  static prefixFromNow() => "in";
  static suffixAgo() => "";
  static suffixFromNow() => "";

  static lessThanOneMinute() => "weniger als einer Minute";
  static aboutAMinute() => "einer Minute";
  static minutes(minutes) =>
      "${Intl.plural(minutes, zero: '', one: '${minutes} Minute', other: '${minutes} Minuten')}";
  static aboutAnHour() => "~1 Stunde";
  static hours(hours) =>
      "${Intl.plural(hours, zero: '', one: '${hours} Stunde', other: '${hours} Stunden')}";
  static aDay() => "~1 Tag";
  static days(days) =>
      "${Intl.plural(days, zero: '', one: '${days} Tag', other: '${days} Tagen')}";
  static aboutAMonth() => "~1 Monat";
  static months(months) =>
      "${Intl.plural(months, zero: '', one: '${months} Monat', other: '${months} Monate')}";
  static aboutAYear() => "~1 Jahr";
  static years(years) =>
      "${Intl.plural(years, zero: '', one: '${years} Jahr', other: '${years} Jahre')}";

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
