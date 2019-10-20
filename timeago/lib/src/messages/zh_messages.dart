import 'package:timeago/src/messages/lookupmessages.dart';

class ZhMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => '前';
  String suffixFromNow() => '後';
  String lessThanOneMinute(int seconds) => '少於一分鐘';
  String aboutAMinute(int minutes) => '約1分鐘';
  String minutes(int minutes) => '${minutes} 分';
  String aboutAnHour(int minutes) => '約1小時';
  String hours(int hours) => '約 ${hours} 小時';
  String aDay(int hours) => '約1天';
  String days(int days) => '約 ${days} 日';
  String aboutAMonth(int days) => '約1個月';
  String months(int months) => '約 ${months} 月';
  String aboutAYear(int year) => '約1年';
  String years(int years) => '約 ${years} 年';
  String wordSeparator() => ' ';
}