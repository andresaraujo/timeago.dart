import 'package:timeago/src/messages/lookupmessages.dart';

/// Korean messages
class KoMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '전';
  @override
  String suffixFromNow() => '후';
  @override
  String lessThanOneMinute(int seconds) => '방금';
  @override
  String aboutAMinute(int minutes) => '약 1분';
  @override
  String minutes(int minutes) => '${minutes} 분';
  @override
  String aboutAnHour(int minutes) => '약 1시간';
  @override
  String hours(int hours) => '${hours}시간';
  @override
  String aDay(int hours) => '약 1일';
  @override
  String days(int days) => '${days}일';
  @override
  String aboutAMonth(int days) => '약 1달';
  @override
  String months(int months) => '${months}달';
  @override
  String aboutAYear(int year) => '약 1년';
  @override
  String years(int years) => '${years}년';
  @override
  String wordSeparator() => ' ';
}
