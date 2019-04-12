import 'package:timeago/src/messages/lookupmessages.dart';

class KoMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => '전';
  String suffixFromNow() => '방금';
  String lessThanOneMinute(int seconds) => '방금';
  String aboutAMinute(int minutes) => '약 1분';
  String minutes(int minutes) => '${minutes} 분';
  String aboutAnHour(int minutes) => '약 1시간';
  String hours(int hours) => '${hours}시간';
  String aDay(int hours) => '약 1일';
  String days(int days) => '${days}일';
  String aboutAMonth(int days) => '약 1달';
  String months(int months) => '${months}달';
  String aboutAYear(int year) => '약 1년';
  String years(int years) => '${years}년';
  String wordSeparator() => ' ';
}  