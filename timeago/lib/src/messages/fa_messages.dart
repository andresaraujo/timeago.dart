import 'package:timeago/src/messages/lookupmessages.dart';

class FaMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => 'پیش';
  String suffixFromNow() => 'بعد';
  String lessThanOneMinute(int seconds) => 'چند لحظه';
  String aboutAMinute(int minutes) => 'یک دقیقه';
  String minutes(int minutes) => '${minutes} دقیقه';
  String aboutAnHour(int minutes) => '~یک ساعت';
  String hours(int hours) => '${hours} ساعت';
  String aDay(int hours) => '~یک روز';
  String days(int days) => '${days} روز';
  String aboutAMonth(int days) => '~یک ماه';
  String months(int months) => '${months} ماه';
  String aboutAYear(int year) => '~یک سال';
  String years(int years) => '${years} سال';
  String wordSeparator() => ' ';
}