library timeago.es_messages;

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'messages';

  static prefixAgo() => "hace";
  static prefixFromNow() => "dentro de";
  static suffixAgo() => "";
  static suffixFromNow() => "";

  static lessThanOneMinute() => "un momento";
  static aboutAMinute() => "un minuto";
  static minutes(minutes) =>
      "${Intl.plural(minutes, zero: '', one: '${minutes} minuto', other: '${minutes} minutos')}";
  static aboutAnHour() => "una hora";
  static hours(hours) =>
      "${Intl.plural(hours, zero: '', one: '${hours} hora', other: '${hours} horas')}";
  static aDay() => "un día";
  static days(days) =>
      "${Intl.plural(days, zero: '', one: '${days} día', other: '${days} días')}";
  static aboutAMonth() => "un mes";
  static months(months) =>
      "${Intl.plural(months, zero: '', one: '${months} mes', other: '${months} meses')}";
  static aboutAYear() => "un año";
  static years(years) =>
      "${Intl.plural(years, zero: '', one: '${years} año', other: '${years} años')}";

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
