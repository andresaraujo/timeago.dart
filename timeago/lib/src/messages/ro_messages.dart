import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Romanian messages
class RoMessages implements LookupMessages {
  @override
  String prefixAgo() => 'acum';
  @override
  String prefixFromNow() => 'peste';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'o clipită';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'un minut';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes minute';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'o oră';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours ore';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'o zi';
  @override
  String days(int days, AgoOrFromNow _) => '$days zile';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'o luna';
  @override
  String months(int months, AgoOrFromNow _) => '$months luni';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'un an';
  @override
  String years(int years, AgoOrFromNow _) => '$years ani';
  @override
  String wordSeparator() => ' ';
}

/// Romanian short messages
class RoShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'acum';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '1 min';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes min';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~1 oră';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours ore';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~1 zi';
  @override
  String days(int days, AgoOrFromNow _) => '$days zile';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~1 luni';
  @override
  String months(int months, AgoOrFromNow _) => '$months luni';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1 ani';
  @override
  String years(int years, AgoOrFromNow _) => '$years ani';
  @override
  String wordSeparator() => ' ';
}
