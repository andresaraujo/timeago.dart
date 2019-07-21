import 'package:timeago/src/messages/lookupmessages.dart';

class KuMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => 'لەمەوپێش';
  String suffixFromNow() => 'لە ئێستاوە';
  String lessThanOneMinute(int seconds) => 'خولەکێک';
  String aboutAMinute(int minutes) => 'خولەکێک';
  String minutes(int minutes) => 'خولەک $minutes';
  String aboutAnHour(int minutes) => 'نزیکەی کاژێرێک';
  String hours(int hours) => 'کاژێر $hours ';
  String aDay(int hours) => 'ڕۆژێک';
  String days(int days) => 'ڕۆژ $days';
  String aboutAMonth(int days) => 'نزیکەی مانگێک';
  String months(int months) => 'مانگ $months';
  String aboutAYear(int year) => 'نزیکەی ساڵێک';
  String years(int years) => 'ساڵ $years';
  String wordSeparator() => ' ';
}

class KuShortMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => '';
  String suffixFromNow() => '';
  String lessThanOneMinute(int seconds) => 'ئێستا';
  String aboutAMinute(int minutes) => '1 خولەک';
  String minutes(int minutes) => 'خولەک $minutes';
  String aboutAnHour(int minutes) => 'کاژێر ~1';
  String hours(int hours) => 'کاژێر $hours';
  String aDay(int hours) => '~1 ڕۆژ';
  String days(int days) => 'رۆژ $days';
  String aboutAMonth(int days) => '~1 مانگ';
  String months(int months) => 'مانگ $months';
  String aboutAYear(int year) => '~1 ساڵ';
  String years(int years) => 'ساڵ $years ';
  String wordSeparator() => ' ';
}
