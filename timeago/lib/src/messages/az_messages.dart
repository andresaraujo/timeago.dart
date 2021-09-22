import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Azeri Messages
class AzMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'əvvəl';
  @override
  String suffixFromNow() => 'indidən';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'bir dəqiqə';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'bir dəqiqə';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes dəqiqə';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'təxminən 1 saat';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours saat';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'bir gün';
  @override
  String days(int days, AgoOrFromNow _) => '$days gün';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'təxminən 1 ay';
  @override
  String months(int months, AgoOrFromNow _) => '$months ay';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'təxminən 1 il';
  @override
  String years(int years, AgoOrFromNow _) => '$years il';
  @override
  String wordSeparator() => ' ';
}

/// Azeri short Messages
class AzShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'indi';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '1 dəq';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes dəq';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~1 s';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours s';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~1 g';
  @override
  String days(int days, AgoOrFromNow _) => '$days g';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~1 ay';
  @override
  String months(int months, AgoOrFromNow _) => '$months ay';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1 il';
  @override
  String years(int years, AgoOrFromNow _) => '$years il';
  @override
  String wordSeparator() => ' ';
}
