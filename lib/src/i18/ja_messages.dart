library timeago.ja_messages;

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'messages';

  static prefixAgo() => "";
  static prefixFromNow() => "今から";
  static suffixAgo() => "前";
  static suffixFromNow() => "後";

  static lessThanOneMinute() => "1 分未満";
  static aboutAMinute() => "約 1 分";
  static minutes(minutes) =>
  "${Intl.plural(minutes, zero: '', one: '${minutes} 分', other: '${minutes} 分')}";
  static aboutAnHour() => "約 1 時間";
  static hours(hours) =>
  "${Intl.plural(hours, zero: '', one: '約 ${hours} 時間', other: '約 ${hours} 時間')}";
  static aDay() => "約 1 日";
  static days(days) =>
  "${Intl.plural(days, zero: '', one: '約 ${days} 日', other: '約 ${days} 日')}";
  static aboutAMonth() => "約 1 月";
  static months(months) =>
  "${Intl.plural(months, zero: '', one: '約 ${months} 月', other: '約 ${months} 月')}";
  static aboutAYear() => "約 1 年";
  static years(years) =>
  "${Intl.plural(years, zero: '', one: '約 ${years} 年', other: '約 ${years} 年')}";

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