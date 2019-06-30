import 'package:timeago/src/messages/lookupmessages.dart';

class NnNoShortMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => '';
  String suffixFromNow() => '';
  String lessThanOneMinute(int seconds) => 'no';
  String aboutAMinute(int minutes) => '1 min';
  String minutes(int minutes) => '$minutes min';
  String aboutAnHour(int minutes) => '~1 t';
  String hours(int hours) => '$hours t';
  String aDay(int hours) => '~1 d';
  String days(int days) => '$days d';
  String aboutAMonth(int days) => '~1 mnd';
  String months(int months) => '$months mnd';
  String aboutAYear(int year) => '~1 år';
  String years(int years) => '$years år';
  String wordSeparator() => ' ';
}

class NnNoMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => 'sidan';
  String suffixFromNow() => 'frå no';
  String lessThanOneMinute(int seconds) => 'eit augeblink';
  String aboutAMinute(int minutes) => 'eit minutt';
  String minutes(int minutes) => '$minutes minutt';
  String aboutAnHour(int minutes) => 'rundt ein time';
  String hours(int hours) => '$hours timer';
  String aDay(int hours) => 'ein dag';
  String days(int days) => '$days dagar';
  String aboutAMonth(int days) => 'omtrent ein månad';
  String months(int months) => '$months månadar';
  String aboutAYear(int year) => 'omtrent eit år';
  String years(int years) => '$years år';
  String wordSeparator() => ' ';
}
