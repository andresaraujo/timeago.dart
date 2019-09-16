import 'package:timeago/src/messages/lookupmessages.dart';

class EsMessages implements LookupMessages {
  String prefixAgo() => 'hace';
  String prefixFromNow() => 'dentro de';
  String suffixAgo() => '';
  String suffixFromNow() => '';
  String lessThanOneMinute(int seconds) => 'un momento';
  String aboutAMinute(int minutes) => 'un minuto';
  String minutes(int minutes) => '$minutes minutos';
  String aboutAnHour(int minutes) => 'una hora';
  String hours(int hours) => '$hours horas';
  String aDay(int hours) => 'un día';
  String days(int days) => '$days días';
  String aboutAMonth(int days) => 'un mes';
  String months(int months) => '$months meses';
  String aboutAYear(int year) => 'un año';
  String years(int years) => '$years años';
  String wordSeparator() => ' ';
}
class EsShortMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => '';
  String suffixFromNow() => '';
  String lessThanOneMinute(int seconds) => 'ahora';
  String aboutAMinute(int minutes) => '1 min';
  String minutes(int minutes) => '$minutes min';
  String aboutAnHour(int minutes) => '~1 hr';
  String hours(int hours) => '$hours hr';
  String aDay(int hours) => '~1 día';
  String days(int days) => '$days días';
  String aboutAMonth(int days) => '~1 mes';
  String months(int months) => '$months meses';
  String aboutAYear(int year) => '~1 año';
  String years(int years) => '$years años';
  String wordSeparator() => ' ';
}
