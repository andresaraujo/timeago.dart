import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Thai messages
class ThMessages implements LookupMessages {
  @override
  String prefixAgo() => 'เมื่อ';
  @override
  String prefixFromNow() => 'ใน';
  @override
  String suffixAgo() => 'ที่แล้ว';
  @override
  String suffixFromNow() => 'จากนี้';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'เมื่อครู่นี้';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'ประมาณหนึ่งนาที';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes นาที';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'ประมาณหนึ่งชั่วโมง';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours ชั่วโมง';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'หนึ่งวัน';
  @override
  String days(int days, AgoOrFromNow _) => '$days วัน';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'ประมาณหนึ่งเดือน';
  @override
  String months(int months, AgoOrFromNow _) => '$months เดือน';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'ประมาณหนึ่งปี';
  @override
  String years(int years, AgoOrFromNow _) => '$years ปี';
  @override
  String wordSeparator() => ' ';
}

/// Thai short messages
class ThShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'เมื่อครู่';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '1 นาที';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes นาที';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~1 ชม';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours ชม';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~1 ว';
  @override
  String days(int days, AgoOrFromNow _) => '$days ว';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~1 ด';
  @override
  String months(int months, AgoOrFromNow _) => '$months ด';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1 ป';
  @override
  String years(int years, AgoOrFromNow _) => '$years ป';
  @override
  String wordSeparator() => ' ';
}
