import 'package:timeago/src/ago_or_from_now.dart';
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
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'agahe gato';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'umunota';
  @override
  String minutes(int minutes, AgoOrFromNow _) => 'iminota $minutes';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'isaha';
  @override
  String hours(int hours, AgoOrFromNow _) => 'amasaha $hours';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'umunsi';
  @override
  String days(int days, AgoOrFromNow _) => 'iminsi $days';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'ukwezi';
  @override
  String months(int months, AgoOrFromNow _) => 'amezi $months';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'umwaka';
  @override
  String years(int years, AgoOrFromNow _) => 'imyaka$years';
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
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'ubu';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'umunota';
  @override
  String minutes(int minutes, AgoOrFromNow _) => 'iminota $minutes';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'isaha';
  @override
  String hours(int hours, AgoOrFromNow _) => 'amasaha $hours';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'umunsi';
  @override
  String days(int days, AgoOrFromNow _) => 'iminsi $days';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'ukwezi';
  @override
  String months(int months, AgoOrFromNow _) => 'amezi $months';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'umwaka';
  @override
  String years(int years, AgoOrFromNow _) => 'imyaka $years';
  @override
  String wordSeparator() => ' ';
}
