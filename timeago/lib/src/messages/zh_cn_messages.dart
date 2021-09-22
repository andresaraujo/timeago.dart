import 'package:timeago/src/ago_or_from_now.dart';
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
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => '少于一分钟';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '约1分钟';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '${minutes} 分';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '约1小时';
  @override
  String hours(int hours, AgoOrFromNow _) => '约 ${hours} 小时';
  @override
  String aDay(int hours, AgoOrFromNow _) => '约1天';
  @override
  String days(int days, AgoOrFromNow _) => '约 ${days} 日';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '约1个月';
  @override
  String months(int months, AgoOrFromNow _) => '约 ${months} 月';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '约1年';
  @override
  String years(int years, AgoOrFromNow _) => '约 ${years} 年';
  @override
  String wordSeparator() => ' ';
}
