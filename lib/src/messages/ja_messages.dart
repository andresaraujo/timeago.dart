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
  String lessThanOneMinute(int seconds) => '${seconds}秒';
  @override
  String aboutAMinute(int minutes) => '約1分';
  @override
  String minutes(int minutes) => '${minutes}分';
  @override
  String aboutAnHour(int minutes) => '約1時間';
  @override
  String hours(int hours) => '${hours}時間';
  @override
  String aDay(int hours) => '1日';
  @override
  String days(int days) => '${days}日';
  @override
  String aboutAMonth(int days) => '約1か月';
  @override
  String months(int months) => '${months}か月';
  @override
  String aboutAYear(int year) => '約1年';
  @override
  String years(int years) => '${years}年';
  @override
  String wordSeparator() => '';
}
