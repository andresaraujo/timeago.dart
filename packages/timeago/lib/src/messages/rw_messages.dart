import 'package:timeago/src/messages/lookupmessages.dart';

/// Kinyarwanda Messages
class RwMessages implements LookupMessages {
  @override
  String prefixAgo() => 'hashize';
  @override
  String prefixFromNow() => 'kuva';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'agahe gato';
  @override
  String aboutAMinute(int minutes) => 'umunota';
  @override
  String minutes(int minutes) => 'iminota $minutes';
  @override
  String aboutAnHour(int minutes) => 'isaha';
  @override
  String hours(int hours) => 'amasaha $hours';
  @override
  String aDay(int hours) => 'umunsi';
  @override
  String days(int days) => 'iminsi $days';
  @override
  String aboutAMonth(int days) => 'ukwezi';
  @override
  String months(int months) => 'amezi $months';
  @override
  String aboutAYear(int year) => 'umwaka';
  @override
  String years(int years) => 'imyaka$years';
  @override
  String wordSeparator() => ' ';
}

/// Kinyarwanda short Messages
class RwShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'ubu';
  @override
  String aboutAMinute(int minutes) => 'umunota';
  @override
  String minutes(int minutes) => 'iminota $minutes';
  @override
  String aboutAnHour(int minutes) => 'isaha';
  @override
  String hours(int hours) => 'amasaha $hours';
  @override
  String aDay(int hours) => 'umunsi';
  @override
  String days(int days) => 'iminsi $days';
  @override
  String aboutAMonth(int days) => 'ukwezi';
  @override
  String months(int months) => 'amezi $months';
  @override
  String aboutAYear(int year) => 'umwaka';
  @override
  String years(int years) => 'imyaka $years';
  @override
  String wordSeparator() => ' ';
}
