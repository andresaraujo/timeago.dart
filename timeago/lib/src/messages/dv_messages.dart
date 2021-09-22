import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Divehi Messages
class DvMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'ކުރިން';
  @override
  String suffixFromNow() => 'ފަހުން';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'ހިނދުކޮޅެއް';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'މިނެޓެއް ހާއިރު';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes މިނެޓު';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'ގަޑިއިރެއް ހާއިރު';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours ގަޑިއިރު';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'އެއް ދުވަސް';
  @override
  String days(int days, AgoOrFromNow _) => '$days ދުވަސް';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'މަހެއް ހާ ދުވަސް';
  @override
  String months(int months, AgoOrFromNow _) => '$months މަސް';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'އަހަރެއް ހާ ދުވަސް';
  @override
  String years(int years, AgoOrFromNow _) => '$years އަހަރު';
  @override
  String wordSeparator() => ' ';
}

/// Divehi short Messages
class DvShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'މިހާރު';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '1 މިނެޓް';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes މިނެޓް';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~1 ގ';
  @override
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours ގ';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~1 ދުވަސް';
  @override
  String days(int days, AgoOrFromNow _) => '$days ދުވަސް';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~1 މަސް';
  @override
  String months(int months, AgoOrFromNow _) => '$months މަސް';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1 އަހަރު';
  @override
  String years(int years, AgoOrFromNow _) => '$years އަހަރު';
  @override
  String wordSeparator() => ' ';
}
