import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Japanese messages
class JaMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '今から';
  @override
  String suffixAgo() => '前';
  @override
  String suffixFromNow() => '後';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => '1分未満';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '約1分';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '${minutes}分';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '約1時間';
  @override
  String hours(int hours, AgoOrFromNow _) => '約${hours}時間';
  @override
  String aDay(int hours, AgoOrFromNow _) => '約1日';
  @override
  String days(int days, AgoOrFromNow _) => '約${days}日';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '約1か月';
  @override
  String months(int months, AgoOrFromNow _) => '約${months}か月';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '約1年';
  @override
  String years(int years, AgoOrFromNow _) => '約${years}年';
  @override
  String wordSeparator() => '';
}
