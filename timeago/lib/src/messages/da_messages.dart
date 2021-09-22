import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Danish Messages
class DaMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'siden';
  @override
  String suffixFromNow() => 'fra nu';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'et øjeblik';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'et minut';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes minutter';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'omkring en time';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours timer';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'en dag';
  @override
  String days(int days, AgoOrFromNow _) => '$days dage';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'omkring en måned';
  @override
  String months(int months, AgoOrFromNow _) => '$months måneder';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'omkring et år';
  @override
  String years(int years, AgoOrFromNow _) => '$years år';
  @override
  String wordSeparator() => ' ';
}

/// Danish short Messages
class DaShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'nu';
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
  String aboutAMonth(int days, AgoOrFromNow _) => '~1 md';
  @override
  String months(int months, AgoOrFromNow _) => '$months md';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1 år';
  @override
  String years(int years, AgoOrFromNow _) => '$years år';
  @override
  String wordSeparator() => ' ';
}
