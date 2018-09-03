import 'package:timeago/src/messages/lookupmessages.dart';

class DaMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => 'siden';
  String suffixFromNow() => 'fra nu';
  String lessThanOneMinute(int seconds) => 'et øjeblik';
  String aboutAMinute(int minutes) => 'et minut';
  String minutes(int minutes) => '$minutes minutter';
  String aboutAnHour(int minutes) => 'omkring en time';
  String hours(int hours) => '$hours timer';
  String aDay(int hours) => 'en dag';
  String days(int days) => '$days dage';
  String aboutAMonth(int days) => 'omkring en måned';
  String months(int months) => '$months måneder';
  String aboutAYear(int year) => 'omkring et år';
  String years(int years) => '$years år';
  String wordSeparator() => ' ';
}

class DaShortMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => '';
  String suffixFromNow() => '';
  String lessThanOneMinute(int seconds) => 'nu';
  String aboutAMinute(int minutes) => '1 min';
  String minutes(int minutes) => '$minutes min';
  String aboutAnHour(int minutes) => '~1 t';
  String hours(int hours) => '$hours t';
  String aDay(int hours) => '~1 d';
  String days(int days) => '$days d';
  String aboutAMonth(int days) => '~1 md';
  String months(int months) => '$months md';
  String aboutAYear(int year) => '~1 år';
  String years(int years) => '$years år';
  String wordSeparator() => ' ';
}
