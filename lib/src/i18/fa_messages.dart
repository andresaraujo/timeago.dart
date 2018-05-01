library timeago.fa_messages;

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'messages';

  static prefixAgo() => "";
  static prefixFromNow() => "";
  static suffixAgo() => "پیش";
  static suffixFromNow() => "بعد";

  static lessThanOneMinute() => "چند لحظه";
  static aboutAMinute() => "یک دقیقه";
  static minutes(minutes) =>
      "${Intl.plural(minutes, zero: '', one: '${minutes} دقیقه', other: '${minutes} دقیقه')}";
  static aboutAnHour() => "~یک ساعت";
  static hours(hours) =>
      "${Intl.plural(hours, zero: '', one: '${hours} ساعت', other: '${hours} ساعت')}";
  static aDay() => "~یک روز";
  static days(days) =>
      "${Intl.plural(days, zero: '', one: '${days} روز', other: '${days} روز')}";
  static aboutAMonth() => "~یک ماه";
  static months(months) =>
      "${Intl.plural(months, zero: '', one: '${months} ماه', other: '${months} ماه')}";
  static aboutAYear() => "~یک سال";
  static years(years) =>
      "${Intl.plural(years, zero: '', one: '${years} سال', other: '${years} سال')}";

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
