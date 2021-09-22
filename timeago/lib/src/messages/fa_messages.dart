import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Farsi Messages
class FaMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'پیش';
  @override
  String suffixFromNow() => 'بعد';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'چند لحظه';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'یک دقیقه';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '${minutes} دقیقه';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~یک ساعت';
  @override
  String hours(int hours, AgoOrFromNow _) => '${hours} ساعت';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~یک روز';
  @override
  String days(int days, AgoOrFromNow _) => '${days} روز';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~یک ماه';
  @override
  String months(int months, AgoOrFromNow _) => '${months} ماه';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~یک سال';
  @override
  String years(int years, AgoOrFromNow _) => '${years} سال';
  @override
  String wordSeparator() => ' ';
}
