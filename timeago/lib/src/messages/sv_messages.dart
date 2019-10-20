import 'package:timeago/src/messages/lookupmessages.dart';

class SvMessages implements LookupMessages {
  String prefixAgo() => 'för';
  String prefixFromNow() => 'om';
  String suffixAgo() => 'sedan';
  String suffixFromNow() => '';
  String lessThanOneMinute(int seconds) => 'en stund';
  String aboutAMinute(int minutes) => 'en minut';
  String minutes(int minutes) => '$minutes minuter';
  String aboutAnHour(int minutes) => 'ungefär en timme';
  String hours(int hours) => '$hours timmar';
  String aDay(int hours) => 'en dag';
  String days(int days) => '$days dagar';
  String aboutAMonth(int days) => 'ungefär en månad';
  String months(int months) => '$months månader';
  String aboutAYear(int year) => 'ungefär ett år';
  String years(int years) => '$years år';
  String wordSeparator() => ' ';
}

class SvShortMessages implements LookupMessages {
  String prefixAgo() => 'för ';
  String prefixFromNow() => 'om';
  String suffixAgo() => 'sedan';
  String suffixFromNow() => '';
  String lessThanOneMinute(int seconds) => 'nu';
  String aboutAMinute(int minutes) => '1 min';
  String minutes(int minutes) => '$minutes min';
  String aboutAnHour(int minutes) => '~1 h';
  String hours(int hours) => '$hours h';
  String aDay(int hours) => '~1 d';
  String days(int days) => '$days d';
  String aboutAMonth(int days) => '~1 må';
  String months(int months) => '$months må';
  String aboutAYear(int year) => '~1 år';
  String years(int years) => '$years år';
  String wordSeparator() => ' ';
}