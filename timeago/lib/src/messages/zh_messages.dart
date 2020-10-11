import 'package:timeago/src/messages/lookupmessages.dart';

/// Chinese messages
class ZhMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '前';
  @override
  String suffixFromNow() => '後';
  @override
  String lessThanOneMinute(int seconds) => '少於一分鐘';
  @override
  String aboutAMinute(int minutes) => '約1分鐘';
  @override
  String minutes(int minutes) => '${minutes} 分';
  @override
  String aboutAnHour(int minutes) => '約1小時';
  @override
  String hours(int hours) => '約 ${hours} 小時';
  @override
  String aDay(int hours) => '約1天';
  @override
  String days(int days) => '約 ${days} 日';
  @override
  String aboutAMonth(int days) => '約1個月';
  @override
  String months(int months) => '約 ${months} 月';
  @override
  String aboutAYear(int year) => '約1年';
  @override
  String years(int years) => '約 ${years} 年';
  @override
  String wordSeparator() => ' ';
}
