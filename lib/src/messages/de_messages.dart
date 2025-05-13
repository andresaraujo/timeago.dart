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
  String lessThanOneMinute(int seconds) => 'weniger als einer Minute';
  @override
  String aboutAMinute(int minutes) => 'einer Minute';
  @override
  String minutes(int minutes) => '$minutes Minuten';
  @override
  String aboutAnHour(int minutes) => '~1 Stunde';
  @override
  String hours(int hours) => '$hours Stunden';
  @override
  String aDay(int hours) => '~1 Tag';
  @override
  String days(int days) => '$days Tagen';
  @override
  String aboutAMonth(int days) => '~1 Monat';
  @override
  String months(int months) => '$months Monaten';
  @override
  String aboutAYear(int year) => '~1 Jahr';
  @override
  String years(int years) => '$years Jahren';
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
  String lessThanOneMinute(int seconds) => 'Jetzt';
  @override
  String aboutAMinute(int minutes) => '1 Min.';
  @override
  String minutes(int minutes) => '$minutes Min.';
  @override
  String aboutAnHour(int minutes) => '~1 Std.';
  @override
  String hours(int hours) => '$hours Std.';
  @override
  String aDay(int hours) => '~1 Tg.';
  @override
  String days(int days) => '$days Tg.';
  @override
  String aboutAMonth(int days) => '~1 Mo.';
  @override
  String months(int months) => '$months Mo.';
  @override
  String aboutAYear(int year) => '~1 Jr.';
  @override
  String years(int years) => '$years Jr.';
  @override
  String wordSeparator() => ' ';
}
