import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// French messages
class FrMessages implements LookupMessages {
  @override
  String prefixAgo() => 'il y a';
  @override
  String prefixFromNow() => "d'ici";
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => "moins d'une minute";
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'environ une minute';
  @override
  String minutes(int minutes, AgoOrFromNow _) => 'environ $minutes minutes';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'environ une heure';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours heures';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'environ un jour';
  @override
  String days(int days, AgoOrFromNow _) => 'environ $days jours';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'environ un mois';
  @override
  String months(int months, AgoOrFromNow _) => 'environ $months mois';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'un an';
  @override
  String years(int years, AgoOrFromNow _) => '$years ans';
  @override
  String wordSeparator() => ' ';
}

/// French shott messages
class FrShortMessages implements LookupMessages {
  @override
  String prefixAgo() => 'il y a';
  @override
  String prefixFromNow() => "d'ici";
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => "moins d'une minute";
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'une minute';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes minutes';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'une heure';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours heures';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'un jour';
  @override
  String days(int days, AgoOrFromNow _) => '$days jours';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'un mois';
  @override
  String months(int months, AgoOrFromNow _) => '$months mois';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'un an';
  @override
  String years(int years, AgoOrFromNow _) => '$years ans';
  @override
  String wordSeparator() => ' ';
}
