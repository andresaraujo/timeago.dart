import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Mongolian Messages
class MnMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'өмнө';
  @override
  String suffixFromNow() => 'дараа';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'хэдхэн мөчийн';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'минутын';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes минутын';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'цаг орчим';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours цагийн';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'өдрийн';
  @override
  String days(int days, AgoOrFromNow _) => '$days өдрийн';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'сар орчмын';
  @override
  String months(int months, AgoOrFromNow _) => '$months сарын';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'жил орчмын';
  @override
  String years(int years, AgoOrFromNow _) => '$years жилийн';
  @override
  String wordSeparator() => ' ';
}

/// Mongolian short Messages
class MnShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'саяхан';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '1 мин';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes мин';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~1 ц';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours ц';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~1 ө';
  @override
  String days(int days, AgoOrFromNow _) => '$days ө';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~1 с';
  @override
  String months(int months, AgoOrFromNow _) => '$months с';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1 ж';
  @override
  String years(int years, AgoOrFromNow _) => '$years ж';
  @override
  String wordSeparator() => ' ';
}
