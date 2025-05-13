import 'package:timeago/src/messages/lookupmessages.dart';

/// Bosnian Messages
class BsMessages implements LookupMessages {
  @override
  String prefixAgo() => 'prije';
  @override
  String prefixFromNow() => 'za';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'manje od minute';
  @override
  String aboutAMinute(int minutes) => 'prije minute';
  @override
  String minutes(int minutes) => '$minutes minuta';
  @override
  String aboutAnHour(int minutes) => '~1 sat';
  @override
  String hours(int hours) => '$hours sati';
  @override
  String aDay(int hours) => '~1 dan';
  @override
  String days(int days) => '$days dana';
  @override
  String aboutAMonth(int days) => '~1 mjesec';
  @override
  String months(int months) => '$months mjeseci';
  @override
  String aboutAYear(int year) => '~1 godina';
  @override
  String years(int years) => '$years godina';
  @override
  String wordSeparator() => ' ';
}

/// Bosnian short Messages
class BsShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'upravo sad';
  @override
  String aboutAMinute(int minutes) => '1 min.';
  @override
  String minutes(int minutes) => '$minutes min.';
  @override
  String aboutAnHour(int minutes) => '~1 h.';
  @override
  String hours(int hours) => '$hours h.';
  @override
  String aDay(int hours) => '~1 d.';
  @override
  String days(int days) => '$days d.';
  @override
  String aboutAMonth(int days) => '~1 m.';
  @override
  String months(int months) => '$months m.';
  @override
  String aboutAYear(int year) => '~1 g.';
  @override
  String years(int years) => '$years g.';
  @override
  String wordSeparator() => ' ';
}
