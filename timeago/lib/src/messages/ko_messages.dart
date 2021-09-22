import 'package:timeago/src/ago_or_from_now.dart';
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
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => '방금';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '약 1분';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '${minutes} 분';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '약 1시간';
  @override
  String hours(int hours, AgoOrFromNow _) => '${hours}시간';
  @override
  String aDay(int hours, AgoOrFromNow _) => '약 1일';
  @override
  String days(int days, AgoOrFromNow _) => '${days}일';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '약 1달';
  @override
  String months(int months, AgoOrFromNow _) => '${months}달';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '약 1년';
  @override
  String years(int years, AgoOrFromNow _) => '${years}년';
  @override
  String wordSeparator() => ' ';
}
