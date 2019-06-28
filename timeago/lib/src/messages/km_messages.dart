import 'package:timeago/src/messages/lookupmessages.dart';

class KmMessages implements LookupMessages {
  String prefixAgo() => 'មុននេះ';
  String prefixFromNow() => 'ក្រោយពីនេះ';
  String suffixAgo() => '';
  String suffixFromNow() => '';
  String lessThanOneMinute(int seconds) => 'បន្ដិច';
  String aboutAMinute(int minutes) => 'ប្រមាណមួយនាទី';
  String minutes(int minutes) => ' $minutes នាទី';
  String aboutAnHour(int minutes) => 'ប្រមាណមួយម៉ោង';
  String hours(int hours) => ' $hours ម៉ោង';
  String aDay(int hours) => 'មួយថ្ងៃ';
  String days(int days) => ' $days ថ្ងៃ';
  String aboutAMonth(int days) => 'ប្រមាណមួយខែ';
  String months(int months) => ' $months ខែ';
  String aboutAYear(int year) => 'ប្រមាណមួយឆ្នាំ';
  String years(int years) => ' $years ឆ្នាំ';
  String wordSeparator() => '​';
}

class KmShortMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => '';
  String suffixFromNow() => '';
  String lessThanOneMinute(int seconds) => 'មិញ';
  String aboutAMinute(int minutes) => '1 ន';
  String minutes(int minutes) => '$minutes ន';
  String aboutAnHour(int minutes) => '~1 ម';
  String hours(int hours) => '$hours ម';
  String aDay(int hours) => '~1 ថ';
  String days(int days) => '$days ថ';
  String aboutAMonth(int days) => '~1 ខ';
  String months(int months) => '$months ខ';
  String aboutAYear(int year) => '~1 ឆ';
  String years(int years) => '$years ឆ';
  String wordSeparator() => '';
}