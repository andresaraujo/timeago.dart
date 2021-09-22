import 'package:timeago/src/ago_or_from_now.dart';
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
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => '少於一分鐘';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '約1分鐘';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '${minutes} 分';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '約1小時';
  @override
  String hours(int hours, AgoOrFromNow _) => '約 ${hours} 小時';
  @override
  String aDay(int hours, AgoOrFromNow _) => '約1天';
  @override
  String days(int days, AgoOrFromNow _) => '約 ${days} 日';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '約1個月';
  @override
  String months(int months, AgoOrFromNow _) => '約 ${months} 月';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '約1年';
  @override
  String years(int years, AgoOrFromNow _) => '約 ${years} 年';
  @override
  String wordSeparator() => ' ';
}
