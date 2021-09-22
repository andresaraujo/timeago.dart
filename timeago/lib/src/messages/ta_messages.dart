import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Tamil messages
class TaMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'முன்னர்';
  @override
  String suffixFromNow() => 'கழித்து';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'சில நொடிகள்';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'ஒரு நிமிடம்';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes நிமிடங்கள்';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'ஓர் மணி நேரம்';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours மணி நேரங்கள்';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'ஓர் நாள்';
  @override
  String days(int days, AgoOrFromNow _) => '$days நாட்கள்';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'ஓர் மாதம்';
  @override
  String months(int months, AgoOrFromNow _) => '$months மாதங்கள்';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'ஓராண்டு';
  @override
  String years(int years, AgoOrFromNow _) => '$years ஆண்டுகள்';
  @override
  String wordSeparator() => ' ';
}
