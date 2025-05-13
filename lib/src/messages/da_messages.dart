import 'package:timeago/src/messages/lookupmessages.dart';

/// Danish Messages
class DaMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'siden';
  @override
  String suffixFromNow() => 'fra nu';
  @override
  String lessThanOneMinute(int seconds) => 'et øjeblik';
  @override
  String aboutAMinute(int minutes) => 'et minut';
  @override
  String minutes(int minutes) => '$minutes minutter';
  @override
  String aboutAnHour(int minutes) => 'omkring en time';
  @override
  String hours(int hours) => '$hours timer';
  @override
  String aDay(int hours) => 'en dag';
  @override
  String days(int days) => '$days dage';
  @override
  String aboutAMonth(int days) => 'omkring en måned';
  @override
  String months(int months) => '$months måneder';
  @override
  String aboutAYear(int year) => 'omkring et år';
  @override
  String years(int years) => '$years år';
  @override
  String wordSeparator() => ' ';
}

/// Danish short Messages
class DaShortMessages implements LookupMessages {
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
  String aboutAnHour(int minutes) => '~1 t';
  @override
  String hours(int hours) => '$hours t';
  @override
  String aDay(int hours) => '~1 d';
  @override
  String days(int days) => '$days d';
  @override
  String aboutAMonth(int days) => '~1 md';
  @override
  String months(int months) => '$months md';
  @override
  String aboutAYear(int year) => '~1 år';
  @override
  String years(int years) => '$years år';
  @override
  String wordSeparator() => ' ';
}
