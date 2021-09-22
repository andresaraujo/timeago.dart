import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Portuguese-Brazil messages
class PtBrMessages implements LookupMessages {
  @override
  String prefixAgo() => 'há';
  @override
  String prefixFromNow() => 'em';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'poucos segundos';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '1 minuto';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '${minutes} minutos';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '1 hora';
  @override
  String hours(int hours, AgoOrFromNow _) => '${hours} horas';
  @override
  String aDay(int hours, AgoOrFromNow _) => '1 dia';
  @override
  String days(int days, AgoOrFromNow _) => '${days} dias';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '1 mês';
  @override
  String months(int months, AgoOrFromNow _) => '${months} meses';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '1 ano';
  @override
  String years(int years, AgoOrFromNow _) => '${years} anos';
  @override
  String wordSeparator() => ' ';
}

/// Portuguese-Brazil short messages
class PtBrShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'agora';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '1 min';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '${minutes} min';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~1h';
  @override
  String hours(int hours, AgoOrFromNow _) => '${hours} h';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~1 dia';
  @override
  String days(int days, AgoOrFromNow _) => '${days} dias';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~1 mês';
  @override
  String months(int months, AgoOrFromNow _) => '${months} meses';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1 ano';
  @override
  String years(int years, AgoOrFromNow _) => '${years} anos';
  @override
  String wordSeparator() => ' ';
}
