import 'package:timeago/src/messages/lookupmessages.dart';

/// Farsi Messages
class FaMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'پیش';
  @override
  String suffixFromNow() => 'بعد';
  @override
  String lessThanOneMinute(int seconds) => 'چند لحظه';
  @override
  String aboutAMinute(int minutes) => 'یک دقیقه';
  @override
  String minutes(int minutes) => '${minutes} دقیقه';
  @override
  String aboutAnHour(int minutes) => '~یک ساعت';
  @override
  String hours(int hours) => '${hours} ساعت';
  @override
  String aDay(int hours) => '~یک روز';
  @override
  String days(int days) => '${days} روز';
  @override
  String aboutAMonth(int days) => '~یک ماه';
  @override
  String months(int months) => '${months} ماه';
  @override
  String aboutAYear(int year) => '~یک سال';
  @override
  String years(int years) => '${years} سال';
  @override
  String wordSeparator() => ' ';
}
