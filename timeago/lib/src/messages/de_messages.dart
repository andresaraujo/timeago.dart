import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// German Messages
class DeMessages implements LookupMessages {
  @override
  String prefixAgo() => 'vor';
  @override
  String prefixFromNow() => 'in';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'weniger als einer Minute';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'einer Minute';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes Minuten';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~1 Stunde';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours Stunden';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~1 Tag';
  @override
  String days(int days, AgoOrFromNow _) => '$days Tagen';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~1 Monat';
  @override
  String months(int months, AgoOrFromNow _) => '$months Monaten';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1 Jahr';
  @override
  String years(int years, AgoOrFromNow _) => '$years Jahren';
  @override
  String wordSeparator() => ' ';
}

/// German short Messages
class DeShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'Jetzt';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '1 Min.';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes Min.';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~1 Std.';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours Std.';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~1 Tg.';
  @override
  String days(int days, AgoOrFromNow _) => '$days Tg.';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~1 Mo.';
  @override
  String months(int months, AgoOrFromNow _) => '$months Mo.';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1 Jr.';
  @override
  String years(int years, AgoOrFromNow _) => '$years Jr.';
  @override
  String wordSeparator() => ' ';
}
