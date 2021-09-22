import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Catalan Messages
class CaMessages implements LookupMessages {
  @override
  String prefixAgo() => 'fa';
  @override
  String prefixFromNow() => "d'aquí a";
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'un moment';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'un minut';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes minuts';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'una hora';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours hores';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'un dia';
  @override
  String days(int days, AgoOrFromNow _) => '$days dies';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'un mes';
  @override
  String months(int months, AgoOrFromNow _) => '$months mesos';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'un any';
  @override
  String years(int years, AgoOrFromNow _) => '$years anys';
  @override
  String wordSeparator() => ' ';
}

/// Catalan short Messages
class CaShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'ara';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '1 min';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes min';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~1 hr';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours hr';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~1 dia';
  @override
  String days(int days, AgoOrFromNow _) => '$days dies';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~1 mes';
  @override
  String months(int months, AgoOrFromNow _) => '$months mesos';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1 any';
  @override
  String years(int years, AgoOrFromNow _) => '$years anys';
  @override
  String wordSeparator() => ' ';
}
