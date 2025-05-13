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
  String lessThanOneMinute(int seconds) => 'เมื่อครู่นี้';
  @override
  String aboutAMinute(int minutes) => 'ประมาณหนึ่งนาที';
  @override
  String minutes(int minutes) => '$minutes นาที';
  @override
  String aboutAnHour(int minutes) => 'ประมาณหนึ่งชั่วโมง';
  @override
  String hours(int hours) => '$hours ชั่วโมง';
  @override
  String aDay(int hours) => 'หนึ่งวัน';
  @override
  String days(int days) => '$days วัน';
  @override
  String aboutAMonth(int days) => 'ประมาณหนึ่งเดือน';
  @override
  String months(int months) => '$months เดือน';
  @override
  String aboutAYear(int year) => 'ประมาณหนึ่งปี';
  @override
  String years(int years) => '$years ปี';
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
  String lessThanOneMinute(int seconds) => 'เมื่อครู่';
  @override
  String aboutAMinute(int minutes) => '1 นาที';
  @override
  String minutes(int minutes) => '$minutes นาที';
  @override
  String aboutAnHour(int minutes) => '~1 ชม';
  @override
  String hours(int hours) => '$hours ชม';
  @override
  String aDay(int hours) => '~1 ว';
  @override
  String days(int days) => '$days ว';
  @override
  String aboutAMonth(int days) => '~1 ด';
  @override
  String months(int months) => '$months ด';
  @override
  String aboutAYear(int year) => '~1 ป';
  @override
  String years(int years) => '$years ป';
  @override
  String wordSeparator() => ' ';
}
