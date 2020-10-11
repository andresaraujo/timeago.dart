import 'package:timeago/src/messages/lookupmessages.dart';

/// Chinese-China messages
class ZhCnMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '前';
  @override
  String suffixFromNow() => '后';
  @override
  String lessThanOneMinute(int seconds) => '少于一分钟';
  @override
  String aboutAMinute(int minutes) => '约1分钟';
  @override
  String minutes(int minutes) => '${minutes} 分';
  @override
  String aboutAnHour(int minutes) => '约1小时';
  @override
  String hours(int hours) => '约 ${hours} 小时';
  @override
  String aDay(int hours) => '约1天';
  @override
  String days(int days) => '约 ${days} 日';
  @override
  String aboutAMonth(int days) => '约1个月';
  @override
  String months(int months) => '约 ${months} 月';
  @override
  String aboutAYear(int year) => '约1年';
  @override
  String years(int years) => '约 ${years} 年';
  @override
  String wordSeparator() => ' ';
}
