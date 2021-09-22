import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Norwegian-Nynorsk-Norway short messgages
class NnNoShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'no';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '1 min';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes min';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~1 t';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours t';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~1 d';
  @override
  String days(int days, AgoOrFromNow _) => '$days d';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~1 mnd';
  @override
  String months(int months, AgoOrFromNow _) => '$months mnd';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1 år';
  @override
  String years(int years, AgoOrFromNow _) => '$years år';
  @override
  String wordSeparator() => ' ';
}

/// Norwegian-Nynorsk-Norway messgages
class NnNoMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'sidan';
  @override
  String suffixFromNow() => 'frå no';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'eit augeblink';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'eit minutt';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes minutt';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'rundt ein time';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours timer';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'ein dag';
  @override
  String days(int days, AgoOrFromNow _) => '$days dagar';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'omtrent ein månad';
  @override
  String months(int months, AgoOrFromNow _) => '$months månadar';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'omtrent eit år';
  @override
  String years(int years, AgoOrFromNow _) => '$years år';
  @override
  String wordSeparator() => ' ';
}
