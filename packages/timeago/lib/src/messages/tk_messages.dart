import 'package:timeago/src/messages/lookupmessages.dart';

/// Turkish messages
class TkMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'öň';
  @override
  String suffixFromNow() => 'galdy';
  @override
  String lessThanOneMinute(int seconds) => 'biraz';
  @override
  String aboutAMinute(int minutes) => 'bir minut';
  @override
  String minutes(int minutes) => '$minutes minut';
  @override
  String aboutAnHour(int minutes) => 'bir sagat';
  @override
  String hours(int hours) => '$hours sagat';
  @override
  String aDay(int hours) => 'bir gün';
  @override
  String days(int days) => '$days gün';
  @override
  String aboutAMonth(int days) => 'bir aý';
  @override
  String months(int months) => '$months aý';
  @override
  String aboutAYear(int year) => 'bir ýyl';
  @override
  String years(int years) => '$years ýyl';
  @override
  String wordSeparator() => ' ';
}
