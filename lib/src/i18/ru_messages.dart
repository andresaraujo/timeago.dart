library timeago.ru_messages;

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'messages';

  static prefixAgo() => "";
  static prefixFromNow() => "через";
  static suffixAgo() => "назад";
  static suffixFromNow() => "";

  static lessThanOneMinute() => "минуту";
  static aboutAMinute() => "минуту";
  static minutes(minutes) =>
      "${Intl.plural(minutes, zero: '', one: '${minutes} минуту', few: '${minutes} минуты', other: '${minutes} минут')}";
  static aboutAnHour() => "час";
  static hours(hours) =>
      "${Intl.plural(hours, zero: '', one: '${hours} час', few: '${hours} часа', other: '${hours} часов')}";
  static aDay() => "день";
  static days(days) =>
      "${Intl.plural(days, zero: '', one: '${days} день', few: '${days} дня', other: '${days} дней')}";
  static aboutAMonth() => "месяц";
  static months(months) =>
      "${Intl.plural(months, zero: '', one: '${months} месяц', few: '${months} месяца', other: '${months} месяцев')}";
  static aboutAYear() => "год";
  static years(years) =>
      "${Intl.plural(years, zero: '', one: '${years} год', few: '${years} года', other: '${years} лет')}";

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
