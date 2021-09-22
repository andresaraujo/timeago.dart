import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Norwegian-Bokm-Norway short messages
class NbNoShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'nå';
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

/// Norwegian-Bokm-Norway messages
class NbNoMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'siden';
  @override
  String suffixFromNow() => 'fra nå';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'ett øyeblikk';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'ett minutt';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes minutter';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'rundt en time';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours timer';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'en dag';
  @override
  String days(int days, AgoOrFromNow _) => '$days dager';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'omtrent en måned';
  @override
  String months(int months, AgoOrFromNow _) => '$months måneder';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'omtrent et år';
  @override
  String years(int years, AgoOrFromNow _) => '$years år';
  @override
  String wordSeparator() => ' ';
}
