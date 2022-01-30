import 'package:timeago/src/messages/lookupmessages.dart';

/// Norwegian-Nynorsk-Norway short messgages
class NnNoShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'no';
  @override
  String aboutAMinute(int minutes) => '1 min';
  @override
  String minutes(int minutes) => '$minutes min';
  @override
  String aboutAnHour(int minutes) => '~1 t';
  @override
  String hours(int hours) => '$hours t';
  @override
  String aDay(int hours) => '~1 d';
  @override
  String days(int days) => '$days d';
  @override
  String aboutAMonth(int days) => '~1 mnd';
  @override
  String months(int months) => '$months mnd';
  @override
  String aboutAYear(int year) => '~1 år';
  @override
  String years(int years) => '$years år';
  @override
  String wordSeparator() => ' ';
}

/// Norwegian-Nynorsk-Norway messgages
class NnNoMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'sidan';
  @override
  String suffixFromNow() => 'frå no';
  @override
  String lessThanOneMinute(int seconds) => 'eit augeblink';
  @override
  String aboutAMinute(int minutes) => 'eit minutt';
  @override
  String minutes(int minutes) => '$minutes minutt';
  @override
  String aboutAnHour(int minutes) => 'rundt ein time';
  @override
  String hours(int hours) => '$hours timer';
  @override
  String aDay(int hours) => 'ein dag';
  @override
  String days(int days) => '$days dagar';
  @override
  String aboutAMonth(int days) => 'omtrent ein månad';
  @override
  String months(int months) => '$months månadar';
  @override
  String aboutAYear(int year) => 'omtrent eit år';
  @override
  String years(int years) => '$years år';
  @override
  String wordSeparator() => ' ';
}
