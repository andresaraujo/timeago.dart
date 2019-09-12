import 'package:timeago/src/messages/lookupmessages.dart';

class ItMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => 'tra';
  String suffixAgo() => 'fa';
  String suffixFromNow() => '';
  String lessThanOneMinute(int seconds) => 'meno di un minuto';
  String aboutAMinute(int minutes) => 'circa un minuto';
  String minutes(int minutes) => '${minutes} minuti';
  String aboutAnHour(int minutes) => "circa un'ora";
  String hours(int hours) => '${hours} ore';
  String aDay(int hours) => 'circa un giorno';
  String days(int days) => '${days} giorni';
  String aboutAMonth(int days) => 'circa un mese';
  String months(int months) => '${months} mesi';
  String aboutAYear(int year) => 'circa un anno';
  String years(int years) => '${years} anni';
  String wordSeparator() => ' ';
}

class ItShortMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => '';
  String suffixFromNow() => '';
  String lessThanOneMinute(int seconds) => 'ora';
  String aboutAMinute(int minutes) => '1 m';
  String minutes(int minutes) => '$minutes m';
  String aboutAnHour(int minutes) => '~1 o';
  String hours(int hours) => '$hours o';
  String aDay(int hours) => '~1 g';
  String days(int days) => '$days g';
  String aboutAMonth(int days) => '~1 m';
  String months(int months) => '$months m';
  String aboutAYear(int year) => '~1 a';
  String years(int years) => '$years a';
  String wordSeparator() => ' ';
}
