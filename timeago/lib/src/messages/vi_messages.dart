import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Vietnamese messages
class ViMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'trước';
  @override
  String suffixFromNow() => 'nữa';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'một phút';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'khoảng một phút';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes phút';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'khoảng 1 tiếng';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours tiếng';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'một ngày';
  @override
  String days(int days, AgoOrFromNow _) => '$days ngày';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'khoảng 1 tháng';
  @override
  String months(int months, AgoOrFromNow _) => '$months tháng';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'khoảng 1 năm';
  @override
  String years(int years, AgoOrFromNow _) => '$years năm';
  @override
  String wordSeparator() => ' ';
}

/// Vietnamese short messages
class ViShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'bây giờ';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '1 ph';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes ph';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~1 h';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours h';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~1 ngày';
  @override
  String days(int days, AgoOrFromNow _) => '$days ngày';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~1 tháng';
  @override
  String months(int months, AgoOrFromNow _) => '$months tháng';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1 năm';
  @override
  String years(int years, AgoOrFromNow _) => '$years năm';
  @override
  String wordSeparator() => ' ';
}
