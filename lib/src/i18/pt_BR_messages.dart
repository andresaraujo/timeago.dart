library timeago.pt_BR_messages;

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'messages';

  static prefixAgo() => "há";
  static prefixFromNow() => "em";
  static suffixAgo() => "";
  static suffixFromNow() => "";

  static lessThanOneMinute() => "poucos segundos";
  static aboutAMinute() => "um minuto";
  static minutes(minutes) =>
      "${Intl.plural(minutes, zero: '', one: '${minutes} minuto', other: '${minutes} minutos')}";
  static aboutAnHour() => "uma hora";
  static hours(hours) =>
      "${Intl.plural(hours, zero: '', one: '${hours} hora', other: '${hours} horas')}";
  static aDay() => "um dia";
  static days(days) =>
      "${Intl.plural(days, zero: '', one: '${days} dia', other: '${days} dias')}";
  static aboutAMonth() => "um mês";
  static months(months) =>
      "${Intl.plural(months, zero: '', one: '${months} mês', other: '${months} meses')}";
  static aboutAYear() => "um ano";
  static years(years) =>
      "${Intl.plural(years, zero: '', one: '${years} ano', other: '${years} anos')}";

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
