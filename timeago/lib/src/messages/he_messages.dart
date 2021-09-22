import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Hebrew Messages
class HeMessages implements LookupMessages {
  @override
  String prefixAgo() => 'לפני';
  @override
  String prefixFromNow() => 'בעוד';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'כמה רגעים';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'דקה';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes דקות';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'כשעה';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours שעות';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'יום';
  @override
  String days(int days, AgoOrFromNow _) => '$days ימים';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'כחודש';
  @override
  String months(int months, AgoOrFromNow _) => '$months חודשים';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'כשנה';
  @override
  String years(int years, AgoOrFromNow _) => '$years שנים';
  @override
  String wordSeparator() => ' ';
}

/// Hebrew short Messages
class HeShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => 'בעוד';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'כעת';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'דקה';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes דקות';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'כשעה';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours שעות';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'יום';
  @override
  String days(int days, AgoOrFromNow _) => '$days ימים';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'כחודש';
  @override
  String months(int months, AgoOrFromNow _) => '$months חודשים';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'כשנה';
  @override
  String years(int years, AgoOrFromNow _) => '$years שנים';
  @override
  String wordSeparator() => ' ';
}
