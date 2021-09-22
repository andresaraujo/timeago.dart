import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Swedish messages
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
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'en stund';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'en minut';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes minuter';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'ungefär en timme';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours timmar';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'en dag';
  @override
  String days(int days, AgoOrFromNow _) => '$days dagar';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'ungefär en månad';
  @override
  String months(int months, AgoOrFromNow _) => '$months månader';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'ungefär ett år';
  @override
  String years(int years, AgoOrFromNow _) => '$years år';
  @override
  String wordSeparator() => ' ';
}

/// Swedish Short messages
class SvShortMessages implements LookupMessages {
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
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~1 h';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours h';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~1 d';
  @override
  String days(int days, AgoOrFromNow _) => '$days d';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~1 mån';
  @override
  String months(int months, AgoOrFromNow _) => '$months mån';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1 år';
  @override
  String years(int years, AgoOrFromNow _) => '$years år';
  @override
  String wordSeparator() => ' ';
}
