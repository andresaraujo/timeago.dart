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
  String lessThanOneMinute(int seconds) => 'un moment';
  @override
  String aboutAMinute(int minutes) => 'un minut';
  @override
  String minutes(int minutes) => '$minutes minuts';
  @override
  String aboutAnHour(int minutes) => 'una hora';
  @override
  String hours(int hours) => '$hours hores';
  @override
  String aDay(int hours) => 'un dia';
  @override
  String days(int days) => '$days dies';
  @override
  String aboutAMonth(int days) => 'un mes';
  @override
  String months(int months) => '$months mesos';
  @override
  String aboutAYear(int year) => 'un any';
  @override
  String years(int years) => '$years anys';
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
  String lessThanOneMinute(int seconds) => 'ara';
  @override
  String aboutAMinute(int minutes) => '1 min';
  @override
  String minutes(int minutes) => '$minutes min';
  @override
  String aboutAnHour(int minutes) => '~1 hr';
  @override
  String hours(int hours) => '$hours hr';
  @override
  String aDay(int hours) => '~1 dia';
  @override
  String days(int days) => '$days dies';
  @override
  String aboutAMonth(int days) => '~1 mes';
  @override
  String months(int months) => '$months mesos';
  @override
  String aboutAYear(int year) => '~1 any';
  @override
  String years(int years) => '$years anys';
  @override
  String wordSeparator() => ' ';
}
