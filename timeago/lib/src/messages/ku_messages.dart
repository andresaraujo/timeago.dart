import 'package:timeago/src/messages/lookupmessages.dart';

class KuMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'لەمەوپێش';
  @override
  String suffixFromNow() => 'لە ئێستاوە';
  @override
  String lessThanOneMinute(int seconds) => 'خولەکێک';
  @override
  String aboutAMinute(int minutes) => 'خولەکێک';
  @override
  String minutes(int minutes) => 'خولەک $minutes';
  @override
  String aboutAnHour(int minutes) => 'نزیکەی کاژێرێک';
  @override
  String hours(int hours) => 'کاژێر $hours ';
  @override
  String aDay(int hours) => 'ڕۆژێک';
  @override
  String days(int days) => 'ڕۆژ $days';
  @override
  String aboutAMonth(int days) => 'نزیکەی مانگێک';
  @override
  String months(int months) => 'مانگ $months';
  @override
  String aboutAYear(int year) => 'نزیکەی ساڵێک';
  @override
  String years(int years) => 'ساڵ $years';
  @override
  String wordSeparator() => ' ';
}

class KuShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'ئێستا';
  @override
  String aboutAMinute(int minutes) => '1 خولەک';
  @override
  String minutes(int minutes) => 'خولەک $minutes';
  @override
  String aboutAnHour(int minutes) => 'کاژێر ~1';
  @override
  String hours(int hours) => 'کاژێر $hours';
  @override
  String aDay(int hours) => '~1 ڕۆژ';
  @override
  String days(int days) => 'رۆژ $days';
  @override
  String aboutAMonth(int days) => '~1 مانگ';
  @override
  String months(int months) => 'مانگ $months';
  @override
  String aboutAYear(int year) => '~1 ساڵ';
  @override
  String years(int years) => 'ساڵ $years ';
  @override
  String wordSeparator() => ' ';
}
