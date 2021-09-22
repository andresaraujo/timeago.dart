import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Dutch messages
class NlMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => 'over';
  @override
  String suffixAgo() => 'geleden';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'een moment';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'één minuut';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes minuten';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'ongeveer één uur';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours uur';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'één dag';
  @override
  String days(int days, AgoOrFromNow _) => '$days dagen';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'ongeveer één maand';
  @override
  String months(int months, AgoOrFromNow _) => '$months maanden';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'ongeveer één jaar';
  @override
  String years(int years, AgoOrFromNow _) => '$years jaren';
  @override
  String wordSeparator() => ' ';
}

/// Dutch short messages
class NlShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'nu';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '1 min';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes min';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~1 u';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours u';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~1 d';
  @override
  String days(int days, AgoOrFromNow _) => '$days d';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~1 ma';
  @override
  String months(int months, AgoOrFromNow _) => '$months ma';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1 jr';
  @override
  String years(int years, AgoOrFromNow _) => '$years jr';
  @override
  String wordSeparator() => ' ';
}
