import 'package:timeago/src/ago_or_from_now.dart';
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
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'un momento';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'un minuto';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes minutos';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'una hora';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours horas';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'un día';
  @override
  String days(int days, AgoOrFromNow _) => '$days días';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'un mes';
  @override
  String months(int months, AgoOrFromNow _) => '$months meses';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'un año';
  @override
  String years(int years, AgoOrFromNow _) => '$years años';
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
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'ahora';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '1 min';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes min';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~1 hr';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours hr';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~1 día';
  @override
  String days(int days, AgoOrFromNow _) => '$days días';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~1 mes';
  @override
  String months(int months, AgoOrFromNow _) => '$months meses';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1 año';
  @override
  String years(int years, AgoOrFromNow _) => '$years años';
  @override
  String wordSeparator() => ' ';
}
