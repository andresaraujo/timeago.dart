import 'package:timeago/src/messages/lookupmessages.dart';

class ThMessages implements LookupMessages {
  String prefixAgo() => 'เมื่อ';
  String prefixFromNow() => 'ใน';
  String suffixAgo() => 'ที่แล้ว';
  String suffixFromNow() => 'จากนี้';
  String lessThanOneMinute(int seconds) => 'เมื่อครู่นี้';
  String aboutAMinute(int minutes) => 'ประมาณหนึ่งนาที';
  String minutes(int minutes) => '$minutes นาที';
  String aboutAnHour(int minutes) => 'ประมาณหนึ่งชั่วโมง';
  String hours(int hours) => '$hours ชั่วโมง';
  String aDay(int hours) => 'หนึ่งวัน';
  String days(int days) => '$days วัน';
  String aboutAMonth(int days) => 'ประมาณหนึ่งเดือน';
  String months(int months) => '$months เดือน';
  String aboutAYear(int year) => 'ประมาณหนึ่งปี';
  String years(int years) => '$years ปี';
  String wordSeparator() => ' ';
}

class ThShortMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => '';
  String suffixFromNow() => '';
  String lessThanOneMinute(int seconds) => 'เมื่อครู่';
  String aboutAMinute(int minutes) => '1 นาที';
  String minutes(int minutes) => '$minutes นาที';
  String aboutAnHour(int minutes) => '~1 ชม';
  String hours(int hours) => '$hours ชม';
  String aDay(int hours) => '~1 ว';
  String days(int days) => '$days ว';
  String aboutAMonth(int days) => '~1 ด';
  String months(int months) => '$months ด';
  String aboutAYear(int year) => '~1 ป';
  String years(int years) => '$years ป';
  String wordSeparator() => ' ';
}
