import 'package:timeago/src/messages/lookupmessages.dart';

class NbNoShortMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => '';
  String suffixFromNow() => '';
  String lessThanOneMinute(int seconds) => 'nå';
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

class NbNoMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => 'siden';
  String suffixFromNow() => 'fra nå';
  String lessThanOneMinute(int seconds) => 'ett øyeblikk';
  String aboutAMinute(int minutes) => 'ett minutt';
  String minutes(int minutes) => '$minutes minutter';
  String aboutAnHour(int minutes) => 'rundt en time';
  String hours(int hours) => '$hours timer';
  String aDay(int hours) => 'en dag';
  String days(int days) => '$days dager';
  String aboutAMonth(int days) => 'omtrent en måned';
  String months(int months) => '$months måneder';
  String aboutAYear(int year) => 'omtrent et år';
  String years(int years) => '$years år';
  String wordSeparator() => ' ';
}
