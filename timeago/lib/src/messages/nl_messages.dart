import 'package:timeago/src/messages/lookupmessages.dart';

class NlMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => 'over';
  String suffixAgo() => 'geleden';
  String suffixFromNow() => '';
  String lessThanOneMinute(int seconds) => 'een moment';
  String aboutAMinute(int minutes) => 'één minuut';
  String minutes(int minutes) => '$minutes minuten';
  String aboutAnHour(int minutes) => 'ongeveer één uur';
  String hours(int hours) => '$hours uren';
  String aDay(int hours) => 'één dag';
  String days(int days) => '$days dagen';
  String aboutAMonth(int days) => 'ongeveer één maand';
  String months(int months) => '$months maanden';
  String aboutAYear(int year) => 'ongeveer één jaar';
  String years(int years) => '$years jaren';
  String wordSeparator() => ' ';
}

class NlShortMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => '';
  String suffixFromNow() => '';
  String lessThanOneMinute(int seconds) => 'nu';
  String aboutAMinute(int minutes) => '1 min';
  String minutes(int minutes) => '$minutes min';
  String aboutAnHour(int minutes) => '~1 u';
  String hours(int hours) => '$hours u';
  String aDay(int hours) => '~1 d';
  String days(int days) => '$days d';
  String aboutAMonth(int days) => '~1 ma';
  String months(int months) => '$months ma';
  String aboutAYear(int year) => '~1 jr';
  String years(int years) => '$years jr';
  String wordSeparator() => ' ';
}
