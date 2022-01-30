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
  String lessThanOneMinute(int seconds) => 'een moment';
  @override
  String aboutAMinute(int minutes) => 'één minuut';
  @override
  String minutes(int minutes) => '$minutes minuten';
  @override
  String aboutAnHour(int minutes) => 'ongeveer één uur';
  @override
  String hours(int hours) => '$hours uur';
  @override
  String aDay(int hours) => 'één dag';
  @override
  String days(int days) => '$days dagen';
  @override
  String aboutAMonth(int days) => 'ongeveer één maand';
  @override
  String months(int months) => '$months maanden';
  @override
  String aboutAYear(int year) => 'ongeveer één jaar';
  @override
  String years(int years) => '$years jaren';
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
  String lessThanOneMinute(int seconds) => 'nu';
  @override
  String aboutAMinute(int minutes) => '1 min';
  @override
  String minutes(int minutes) => '$minutes min';
  @override
  String aboutAnHour(int minutes) => '~1 u';
  @override
  String hours(int hours) => '$hours u';
  @override
  String aDay(int hours) => '~1 d';
  @override
  String days(int days) => '$days d';
  @override
  String aboutAMonth(int days) => '~1 ma';
  @override
  String months(int months) => '$months ma';
  @override
  String aboutAYear(int year) => '~1 jr';
  @override
  String years(int years) => '$years jr';
  @override
  String wordSeparator() => ' ';
}
