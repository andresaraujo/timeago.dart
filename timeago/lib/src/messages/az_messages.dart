import 'package:timeago/src/messages/lookupmessages.dart';

class AzMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'əvvəl';
  @override
  String suffixFromNow() => 'sonra';
  @override
  String lessThanOneMinute(int seconds) => 'bir an';
  @override
  String aboutAMinute(int minutes) => 'bir dəqiqə';
  @override
  String minutes(int minutes) => '$minutes dəqiqə';
  @override
  String aboutAnHour(int minutes) => 'təqribən bir saat';
  @override
  String hours(int hours) => '$hours saat';
  @override
  String aDay(int hours) => 'bir gün';
  @override
  String days(int days) => '$days gün';
  @override
  String aboutAMonth(int days) => 'təqribən bir ay';
  @override
  String months(int months) => '$months ay';
  @override
  String aboutAYear(int year) => 'təqribən bir il';
  @override
  String years(int years) => '$years il';
  @override
  String wordSeparator() => ' ';
}

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
  String lessThanOneMinute(int seconds) => 'indi';
  @override
  String aboutAMinute(int minutes) => '1 dəq';
  @override
  String minutes(int minutes) => '$minutes dəq';
  @override
  String aboutAnHour(int minutes) => '~1 s';
  @override
  String hours(int hours) => '$hours s';
  @override
  String aDay(int hours) => '~1 g';
  @override
  String days(int days) => '$days g';
  @override
  String aboutAMonth(int days) => '~1 ay';
  @override
  String months(int months) => '$months ay';
  @override
  String aboutAYear(int year) => '~1 il';
  @override
  String years(int years) => '$years il';
  @override
  String wordSeparator() => ' ';
}
