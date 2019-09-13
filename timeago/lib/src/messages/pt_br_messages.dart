import 'package:timeago/src/messages/lookupmessages.dart';

class PtBrMessages implements LookupMessages {
  String prefixAgo() => 'Há';
  String prefixFromNow() => 'em';
  String suffixAgo() => '';
  String suffixFromNow() => '';
  String lessThanOneMinute(int seconds) => 'poucos segundos';
  String aboutAMinute(int minutes) => 'um minuto';
  String minutes(int minutes) => '${minutes} minutos';
  String aboutAnHour(int minutes) => 'uma hora';
  String hours(int hours) => '${hours} horas';
  String aDay(int hours) => 'um dia';
  String days(int days) => '${days} dias';
  String aboutAMonth(int days) => 'um mês';
  String months(int months) => '${months} meses';
  String aboutAYear(int year) => 'um ano';
  String years(int years) => '${years} anos';
  String wordSeparator() => ' ';
}

class PtBrShortMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => '';
  String suffixFromNow() => '';
  String lessThanOneMinute(int seconds) => 'agora';
  String aboutAMinute(int minutes) => '1 min';
  String minutes(int minutes) => '${minutes} min';
  String aboutAnHour(int minutes) => '~1h';
  String hours(int hours) => '${hours} h';
  String aDay(int hours) => '~1 dia';
  String days(int days) => '${days} dias';
  String aboutAMonth(int days) => '~1 mês';
  String months(int months) => '${months} meses';
  String aboutAYear(int year) => '~1 ano';
  String years(int years) => '${years} anos';
  String wordSeparator() => ' ';
}
