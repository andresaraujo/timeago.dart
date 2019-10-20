import 'package:timeago/src/messages/lookupmessages.dart';

class ZhCnMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => '前';
  String suffixFromNow() => '后';
  String lessThanOneMinute(int seconds) => '少于一分钟';
  String aboutAMinute(int minutes) => '约1分钟';
  String minutes(int minutes) => '${minutes} 分';
  String aboutAnHour(int minutes) => '约1小时';
  String hours(int hours) => '约 ${hours} 小时';
  String aDay(int hours) => '约1天';
  String days(int days) => '约 ${days} 日';
  String aboutAMonth(int days) => '约1个月';
  String months(int months) => '约 ${months} 月';
  String aboutAYear(int year) => '约1年';
  String years(int years) => '约 ${years} 年';
  String wordSeparator() => ' ';
}
