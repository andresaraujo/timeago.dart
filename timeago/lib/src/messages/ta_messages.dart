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
  String lessThanOneMinute(int seconds) => 'சில நொடிகள்';
  @override
  String aboutAMinute(int minutes) => 'ஒரு நிமிடம்';
  @override
  String minutes(int minutes) => '$minutes நிமிடங்கள்';
  @override
  String aboutAnHour(int minutes) => 'ஓர் மணி நேரம்';
  @override
  String hours(int hours) => '$hours மணி நேரங்கள்';
  @override
  String aDay(int hours) => 'ஓர் நாள்';
  @override
  String days(int days) => '$days நாட்கள்';
  @override
  String aboutAMonth(int days) => 'ஓர் மாதம்';
  @override
  String months(int months) => '$months மாதங்கள்';
  @override
  String aboutAYear(int year) => 'ஓராண்டு';
  @override
  String years(int years) => '$years ஆண்டுகள்';
  @override
  String wordSeparator() => ' ';
}
