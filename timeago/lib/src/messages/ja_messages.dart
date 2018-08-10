import 'package:timeago/src/messages/lookupmessages.dart';

class JaMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '今から';
  String suffixAgo() => '前';
  String suffixFromNow() => '後';
  String lessThanOneMinute(int seconds) => '1 分未満e';
  String aboutAMinute(int minutes) => '約 1 分';
  String minutes(int minutes) => '$minutes 分';
  String aboutAnHour(int minutes) => '約 1 時間';
  String hours(int hours) => '約 $hours 時間';
  String aDay(int hours) => '約 1 日';
  String days(int days) => '約 ${days} 日';
  String aboutAMonth(int days) => '約 1 月';
  String months(int months) => '約 ${months} 月';
  String aboutAYear(int year) => '約 1 年';
  String years(int years) => '約 ${years} 年';
  wordSeparator() => ' ';
}