import 'package:timeago/src/messages/lookupmessages.dart';

class PsMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'مخکې';
  @override
  String suffixFromNow() => 'له اوس څخه';
  @override
  String lessThanOneMinute(int seconds) => 'یوه شیبه';
  @override
  String aboutAMinute(int minutes) => 'ځینې ​​شیبې';
  @override
  String minutes(int minutes) => '$minutes دقیقې';
  @override
  String aboutAnHour(int minutes) => 'شاوخوا یو ساعت';
  @override
  String hours(int hours) => '$hours ساعته';
  @override
  String aDay(int hours) => 'یوه ورځ';
  @override
  String days(int days) => '$days ورځې';
  @override
  String aboutAMonth(int days) => 'شاوخوا یوه میاشت ';
  @override
  String months(int months) => '$months میاشتې';
  @override
  String aboutAYear(int year) => 'شاوخوا یو کال';
  @override
  String years(int years) => '$years کاله';
  @override
  String wordSeparator() => ' ';
}
