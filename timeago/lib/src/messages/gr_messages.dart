import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Greek messages
class GrMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'πρίν';
  @override
  String suffixFromNow() => 'απο τώρα';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'μια στιγμή';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'ένα λεπτό';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes λεπτά';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'περίπου μια ώρα';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours ώρες';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'μια μέρα';
  @override
  String days(int days, AgoOrFromNow _) => '$days μέρες';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'περίπου ένα μήνα';
  @override
  String months(int months, AgoOrFromNow _) => '$months μήνες';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'περίπου ένα χρόνο';
  @override
  String years(int years, AgoOrFromNow _) => '$years χρόνια';
  @override
  String wordSeparator() => ' ';
}

/// Greek short messages
class GrShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'τώρα';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '1 λπτ';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes λπτ';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~1 ώρ';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours ώρες';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~1 μρ';
  @override
  String days(int days, AgoOrFromNow _) => '$days μρς';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~1 μν';
  @override
  String months(int months, AgoOrFromNow _) => '$months μνς';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1 χρ';
  @override
  String years(int years, AgoOrFromNow _) => '$years χρ';
  @override
  String wordSeparator() => ' ';
}
