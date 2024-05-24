import 'package:timeago/src/messages/lookupmessages.dart';

/// English Messages
class BnMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'আগে';
  @override
  String suffixFromNow() => 'এখন থেকে';
  @override
  String lessThanOneMinute(int seconds) => 'কিছুক্ষন';
  @override
  String aboutAMinute(int minutes) => 'এক মিনিট';
  @override
  String minutes(int minutes) => '$minutes মিনিট';
  @override
  String aboutAnHour(int minutes) => 'এক ঘন্টা';
  @override
  String hours(int hours) => '$hours ঘন্টা';
  @override
  String aDay(int hours) => 'এক দিন';
  @override
  String days(int days) => '$days দিন';
  @override
  String aboutAMonth(int days) => 'এক মাস';
  @override
  String months(int months) => '$months মাস';
  @override
  String aboutAYear(int year) => 'এক বছর';
  @override
  String years(int years) => '$years বছর';
  @override
  String wordSeparator() => ' ';
}

/// English short Messages
class BnShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'এখন';
  @override
  String aboutAMinute(int minutes) => '1মিনিট';
  @override
  String minutes(int minutes) => '${minutes}মাস';
  @override
  String aboutAnHour(int minutes) => '~1ঘন্টা';
  @override
  String hours(int hours) => '${hours}ঘন্টা';
  @override
  String aDay(int hours) => '~1দিন';
  @override
  String days(int days) => '${days}দিন';
  @override
  String aboutAMonth(int days) => '~1মাস';
  @override
  String months(int months) => '${months}মাস';
  @override
  String aboutAYear(int year) => '~1বছর';
  @override
  String years(int years) => '${years}বছর';
  @override
  String wordSeparator() => ' ';
}
