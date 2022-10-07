import 'package:timeago/src/messages/lookupmessages.dart';

/// Bengali Messages
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
  String lessThanOneMinute(int seconds) => 'এক মুহূর্ত';
  @override
  String aboutAMinute(int minutes) => 'এক মিনিট';
  @override
  String minutes(int minutes) => '$minutes মিনিট';
  @override
  String aboutAnHour(int minutes) => 'এক ঘন্টা';
  @override
  String hours(int hours) => '$hours ঘণ্টা';
  @override
  String aDay(int hours) => 'একদিন';
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

/// Bengali short Messages
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
  String aboutAMinute(int minutes) => '১মিনিট';
  @override
  String minutes(int minutes) => '${minutes}মিনিট';
  @override
  String aboutAnHour(int minutes) => '~১ঘণ্টা';
  @override
  String hours(int hours) => '${hours}ঘণ্টা';
  @override
  String aDay(int hours) => '~১দিন';
  @override
  String days(int days) => '${days}দিন';
  @override
  String aboutAMonth(int days) => '~১মাস';
  @override
  String months(int months) => '${months}মাস';
  @override
  String aboutAYear(int year) => '~১বছর';
  @override
  String years(int years) => '${years}বছর';
  @override
  String wordSeparator() => ' ';
}
