import 'package:timeago/src/messages/lookupmessages.dart';

/// Hungarian Messages
class HuMessages implements LookupMessages {
  @override
  String prefixAgo() => 'ezelött';
  @override
  String prefixFromNow() => 'mostantól';
  @override
  String suffixAgo() => 'e';
  @override
  String suffixFromNow() => 'mostantól';
  @override
  String lessThanOneMinute(int seconds) => 'kevesebb mint egy perc';
  @override
  String aboutAMinute(int minutes) => 'kb. egy perc';
  @override
  String minutes(int minutes) => '$minutes perc';
  @override
  String aboutAnHour(int minutes) => 'kb. 1 óra';
  @override
  String hours(int hours) => '$hours óra';
  @override
  String aDay(int hours) => 'egy nap';
  @override
  String days(int days) => '$days napok';
  @override
  String aboutAMonth(int days) => 'kb. egy hónap';
  @override
  String months(int months) => '$months hónap';
  @override
  String aboutAYear(int year) => 'kb. egy év';
  @override
  String years(int years) => '$years évek';
  @override
  String wordSeparator() => ' ';
}

/// Hungarian  short Messages
class HuShortMessages implements LookupMessages {
  @override
  String prefixAgo() => 'ezelött';
  @override
  String prefixFromNow() => 'mostantól';
  @override
  String suffixAgo() => 'e';
  @override
  String suffixFromNow() => 'mostantól';
  @override
  String lessThanOneMinute(int seconds) => 'kevesebb mint egy perc';
  @override
  String aboutAMinute(int minutes) => 'kb. 1 perc';
  @override
  String minutes(int minutes) => '$minutes perc';
  @override
  String aboutAnHour(int minutes) => 'kb. 1 óra';
  @override
  String hours(int hours) => '$hours óra';
  @override
  String aDay(int hours) => 'egy nap';
  @override
  String days(int days) => '$days nap';
  @override
  String aboutAMonth(int days) => 'kb. 1 hónap';
  @override
  String months(int months) => '$months honap';
  @override
  String aboutAYear(int year) => 'kb. 1 év';
  @override
  String years(int years) => '$years év';
  @override
  String wordSeparator() => ' ';
}
