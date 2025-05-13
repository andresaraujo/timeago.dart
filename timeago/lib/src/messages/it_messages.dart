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
  String lessThanOneMinute(int seconds) => 'meno di un minuto';
  @override
  String aboutAMinute(int minutes) => 'circa un minuto';
  @override
  String minutes(int minutes) => '${minutes} minuti';
  @override
  String aboutAnHour(int minutes) => "circa un'ora";
  @override
  String hours(int hours) => '${hours} ore';
  @override
  String aDay(int hours) => 'circa un giorno';
  @override
  String days(int days) => '${days} giorni';
  @override
  String aboutAMonth(int days) => 'circa un mese';
  @override
  String months(int months) => '${months} mesi';
  @override
  String aboutAYear(int year) => 'circa un anno';
  @override
  String years(int years) => '${years} anni';
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
  String lessThanOneMinute(int seconds) => 'ora';
  @override
  String aboutAMinute(int minutes) => '1 m';
  @override
  String minutes(int minutes) => '$minutes m';
  @override
  String aboutAnHour(int minutes) => '~1 o';
  @override
  String hours(int hours) => '$hours o';
  @override
  String aDay(int hours) => '~1 g';
  @override
  String days(int days) => '$days g';
  @override
  String aboutAMonth(int days) => '~1 m';
  @override
  String months(int months) => '$months m';
  @override
  String aboutAYear(int year) => '~1 a';
  @override
  String years(int years) => '$years a';
  @override
  String wordSeparator() => ' ';
}
