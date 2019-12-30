import 'package:timeago/src/messages/lookupmessages.dart';

class SvMessages implements LookupMessages {
  @override
  String prefixAgo() => 'för';
  @override
  String prefixFromNow() => 'om';
  @override
  String suffixAgo() => 'sedan';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'en stund';
  @override
  String aboutAMinute(int minutes) => 'en minut';
  @override
  String minutes(int minutes) => '$minutes minuter';
  @override
  String aboutAnHour(int minutes) => 'ungefär en timme';
  @override
  String hours(int hours) => '$hours timmar';
  @override
  String aDay(int hours) => 'en dag';
  @override
  String days(int days) => '$days dagar';
  @override
  String aboutAMonth(int days) => 'ungefär en månad';
  @override
  String months(int months) => '$months månader';
  @override
  String aboutAYear(int year) => 'ungefär ett år';
  @override
  String years(int years) => '$years år';
  @override
  String wordSeparator() => ' ';
}

class SvShortMessages implements LookupMessages {
  @override
  String prefixAgo() => 'för ';
  @override
  String prefixFromNow() => 'om';
  @override
  String suffixAgo() => 'sedan';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'nu';
  @override
  String aboutAMinute(int minutes) => '1 min';
  @override
  String minutes(int minutes) => '$minutes min';
  @override
  String aboutAnHour(int minutes) => '~1 h';
  @override
  String hours(int hours) => '$hours h';
  @override
  String aDay(int hours) => '~1 d';
  @override
  String days(int days) => '$days d';
  @override
  String aboutAMonth(int days) => '~1 må';
  @override
  String months(int months) => '$months må';
  @override
  String aboutAYear(int year) => '~1 år';
  @override
  String years(int years) => '$years år';
  @override
  String wordSeparator() => ' ';
}
