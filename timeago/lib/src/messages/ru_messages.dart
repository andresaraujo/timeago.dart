import 'package:timeago/src/messages/lookupmessages.dart';

class RuMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => 'через';
  String suffixAgo() => 'назад';
  String suffixFromNow() => '';
  String lessThanOneMinute(int seconds) => 'минуту';
  String aboutAMinute(int minutes) => 'минуту';
  String minutes(int minutes) => '${minutes} минут';
  String aboutAnHour(int minutes) => 'час';
  String hours(int hours) => '${hours} часов';
  String aDay(int hours) => 'день';
  String days(int days) => '${days} дней';
  String aboutAMonth(int days) => 'месяц';
  String months(int months) => '${months} месяцев';
  String aboutAYear(int year) => 'год';
  String years(int years) => '${years} лет';
  wordSeparator() => ' ';
}