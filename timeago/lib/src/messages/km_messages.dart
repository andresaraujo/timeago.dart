import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Cambodian messages
class KmMessages implements LookupMessages {
  @override
  String prefixAgo() => 'មុននេះ';
  @override
  String prefixFromNow() => 'ក្រោយពីនេះ';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'បន្ដិច';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'ប្រមាណមួយនាទី';
  @override
  String minutes(int minutes, AgoOrFromNow _) => ' $minutes នាទី';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'ប្រមាណមួយម៉ោង';
  @override
  String hours(int hours, AgoOrFromNow _) => ' $hours ម៉ោង';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'មួយថ្ងៃ';
  @override
  String days(int days, AgoOrFromNow _) => ' $days ថ្ងៃ';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'ប្រមាណមួយខែ';
  @override
  String months(int months, AgoOrFromNow _) => ' $months ខែ';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'ប្រមាណមួយឆ្នាំ';
  @override
  String years(int years, AgoOrFromNow _) => ' $years ឆ្នាំ';
  @override
  String wordSeparator() => '​';
}

/// Cambodian short messages
class KmShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'មិញ';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '1 ន';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes ន';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~1 ម';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours ម';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~1 ថ';
  @override
  String days(int days, AgoOrFromNow _) => '$days ថ';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~1 ខ';
  @override
  String months(int months, AgoOrFromNow _) => '$months ខ';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1 ឆ';
  @override
  String years(int years, AgoOrFromNow _) => '$years ឆ';
  @override
  String wordSeparator() => '';
}
