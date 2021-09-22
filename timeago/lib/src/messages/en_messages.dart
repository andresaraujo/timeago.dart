import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// English Messages
class EnMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'ago';
  @override
  String suffixFromNow() => 'from now';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'a moment';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'a minute';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes minutes';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'about an hour';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours hours';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'a day';
  @override
  String days(int days, AgoOrFromNow _) => '$days days';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'about a month';
  @override
  String months(int months, AgoOrFromNow _) => '$months months';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'about a year';
  @override
  String years(int years, AgoOrFromNow _) => '$years years';
  @override
  String wordSeparator() => ' ';
}

/// English short Messages
class EnShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'now';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '1m';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '${minutes}m';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~1h';
  @override
  String hours(int hours, AgoOrFromNow _) => '${hours}h';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~1d';
  @override
  String days(int days, AgoOrFromNow _) => '${days}d';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~1mo';
  @override
  String months(int months, AgoOrFromNow _) => '${months}mo';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1y';
  @override
  String years(int years, AgoOrFromNow _) => '${years}y';
  @override
  String wordSeparator() => ' ';
}
