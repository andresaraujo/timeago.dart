library timeago.it;

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'messages';

  static prefixAgo() => "";
  static prefixFromNow() => "tra";
  static suffixAgo() => "fa";
  static suffixFromNow() => "";

  static lessThanOneMinute() => "meno di un minuto";
  static aboutAMinute() => "circa un minuto";
  static minutes(minutes) =>
      "${Intl.plural(minutes, zero: '', one: '${minutes} minuto', other: '${minutes} minuti')}";
  static aboutAnHour() => "circa un'ora";
  static hours(hours) =>
      "${Intl.plural(hours, zero: '', one: '${hours} ora', other: '${hours} ore')}";
  static aDay() => "circa un giorno";
  static days(days) =>
      "${Intl.plural(days, zero: '', one: '${days} giorno', other: '${days} giorni')}";
  static aboutAMonth() => "circa un mese";
  static months(months) =>
      "${Intl.plural(months, zero: '', one: '${months} mese', other: '${months} mesi')}";
  static aboutAYear() => "circa un anno";
  static years(years) =>
      "${Intl.plural(years, zero: '', one: '${years} anno', other: '${years} anni')}";

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
