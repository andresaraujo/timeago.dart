import 'package:timeago/src/messages/lookupmessages.dart';

/// Spanish Messages
class EsMessages implements LookupMessages {
  @override
  String prefixAgo() => 'hace';
  @override
  String prefixFromNow() => 'dentro de';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'un momento';
  @override
  String aboutAMinute(int minutes) => 'un minuto';
  @override
  String minutes(int minutes) => '$minutes minutos';
  @override
  String aboutAnHour(int minutes) => 'una hora';
  @override
  String hours(int hours) => '$hours horas';
  @override
  String aDay(int hours) => 'un día';
  @override
  String days(int days) => '$days días';
  @override
  String aboutAMonth(int days) => 'un mes';
  @override
  String months(int months) => '$months meses';
  @override
  String aboutAYear(int year) => 'un año';
  @override
  String years(int years) => '$years años';
  @override
  String wordSeparator() => ' ';
}

/// Spanish short Messages
class EsShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'ahora';
  @override
  String aboutAMinute(int minutes) => '1 min';
  @override
  String minutes(int minutes) => '$minutes min';
  @override
  String aboutAnHour(int minutes) => '~1 hr';
  @override
  String hours(int hours) => '$hours hr';
  @override
  String aDay(int hours) => '~1 día';
  @override
  String days(int days) => '$days días';
  @override
  String aboutAMonth(int days) => '~1 mes';
  @override
  String months(int months) => '$months meses';
  @override
  String aboutAYear(int year) => '~1 año';
  @override
  String years(int years) => '$years años';
  @override
  String wordSeparator() => ' ';
}
