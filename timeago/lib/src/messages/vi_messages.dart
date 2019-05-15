import 'package:timeago/src/messages/lookupmessages.dart';

class ViMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => 'trước';
  String suffixFromNow() => 'nữa';
  String lessThanOneMinute(int seconds) => 'một thoáng';
  String aboutAMinute(int minutes) => 'khoảng một phút';
  String minutes(int minutes) => '$minutes phút';
  String aboutAnHour(int minutes) => 'khoảng 1 tiếng';
  String hours(int hours) => '$hours tiếng';
  String aDay(int hours) => 'một ngày';
  String days(int days) => '$days ngày';
  String aboutAMonth(int days) => 'khoảng 1 tháng';
  String months(int months) => '$months tháng';
  String aboutAYear(int year) => 'khoảng 1 năm';
  String years(int years) => '$years năm';
  String wordSeparator() => ' ';
}

class ViShortMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => '';
  String suffixFromNow() => '';
  String lessThanOneMinute(int seconds) => 'bây giờ';
  String aboutAMinute(int minutes) => '1 ph';
  String minutes(int minutes) => '$minutes ph';
  String aboutAnHour(int minutes) => '~1 h';
  String hours(int hours) => '$hours h';
  String aDay(int hours) => '~1 ngày';
  String days(int days) => '$days ngày';
  String aboutAMonth(int days) => '~1 tháng';
  String months(int months) => '$months tháng';
  String aboutAYear(int year) => '~1 năm';
  String years(int years) => '$years năm';
  String wordSeparator() => ' ';
}
