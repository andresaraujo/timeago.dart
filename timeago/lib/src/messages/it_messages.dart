import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Italian messages
class ItMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => 'tra';
  @override
  String suffixAgo() => 'fa';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'meno di un minuto';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'circa un minuto';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '${minutes} minuti';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => "circa un'ora";
  @override
  String hours(int hours, AgoOrFromNow _) => '${hours} ore';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'circa un giorno';
  @override
  String days(int days, AgoOrFromNow _) => '${days} giorni';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'circa un mese';
  @override
  String months(int months, AgoOrFromNow _) => '${months} mesi';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'circa un anno';
  @override
  String years(int years, AgoOrFromNow _) => '${years} anni';
  @override
  String wordSeparator() => ' ';
}

/// Italian short messages
class ItShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'ora';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '1 m';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes m';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~1 o';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours o';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~1 g';
  @override
  String days(int days, AgoOrFromNow _) => '$days g';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~1 m';
  @override
  String months(int months, AgoOrFromNow _) => '$months m';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1 a';
  @override
  String years(int years, AgoOrFromNow _) => '$years a';
  @override
  String wordSeparator() => ' ';
}
