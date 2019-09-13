import 'package:timeago/src/messages/lookupmessages.dart';

class RoMessages implements LookupMessages {
  String prefixAgo() => 'acum';
  String prefixFromNow() => 'peste';
  String suffixAgo() => '';
  String suffixFromNow() => '';
  String lessThanOneMinute(int seconds) => 'un moment';
  String aboutAMinute(int minutes) => 'un minut';
  String minutes(int minutes) => '$minutes minute';
  String aboutAnHour(int minutes) => 'o ora';
  String hours(int hours) => '$hours ore';
  String aDay(int hours) => 'o zi';
  String days(int days) => '$days zile';
  String aboutAMonth(int days) => 'o luna';
  String months(int months) => '$months luni';
  String aboutAYear(int year) => 'un an';
  String years(int years) => '$years ani';
  String wordSeparator() => ' ';
}

class RoShortMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => '';
  String suffixFromNow() => '';
  String lessThanOneMinute(int seconds) => 'acum';
  String aboutAMinute(int minutes) => '1 min';
  String minutes(int minutes) => '$minutes min';
  String aboutAnHour(int minutes) => '~1 ora';
  String hours(int hours) => '$hours ore';
  String aDay(int hours) => '~1 zi';
  String days(int days) => '$days zile';
  String aboutAMonth(int days) => '~1 luni';
  String months(int months) => '$months luni';
  String aboutAYear(int year) => '~1 ani';
  String years(int years) => '$years ani';
  String wordSeparator() => ' ';
}