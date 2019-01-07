import 'package:timeago/src/messages/lookupmessages.dart';

class EnMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => 'لەمەوپێش';
  String suffixFromNow() => 'لە ئێستاوە';
  String lessThanOneMinute(int seconds) => 'خولەکێک';
  String aboutAMinute(int minutes) => 'خولەکێک';
  String minutes(int minutes) => '$minutes خولەک';
  String aboutAnHour(int minutes) => 'نزیکەی کاژێرێک';
  String hours(int hours) => '$hours کاژێر';
  String aDay(int hours) => 'ڕۆژێک';
  String days(int days) => '$days ڕۆژ';
  String aboutAMonth(int days) => 'نزیکەی مانگێک';
  String months(int months) => '$months مانگ';
  String aboutAYear(int year) => 'نزیکەی ساڵێک';
  String years(int years) => '$years ساڵ';
  String wordSeparator() => ' ';
}

class EnShortMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => '';
  String suffixFromNow() => '';
  String lessThanOneMinute(int seconds) => 'ئێستا';
  String aboutAMinute(int minutes) => '1 خولەک';
  String minutes(int minutes) => '$minutes خولەک';
  String aboutAnHour(int minutes) => '~1 کاژێر';
  String hours(int hours) => '$hours کاژێر';
  String aDay(int hours) => '~1 ڕۆژ';
  String days(int days) => '$days رۆژ';
  String aboutAMonth(int days) => '~1 مانگ';
  String months(int months) => '$months مانگ';
  String aboutAYear(int year) => '~1 ساڵ';
  String years(int years) => '$years ساڵ';
  String wordSeparator() => ' ';
}
