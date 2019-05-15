import 'package:timeago/src/messages/lookupmessages.dart';

class TaMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => 'முன்னர்';
  String suffixFromNow() => 'கழித்து';
  String lessThanOneMinute(int seconds) => "சில நொடிகள்";
  String aboutAMinute(int minutes) => 'ஒரு நிமிடம்';
  String minutes(int minutes) => '$minutes நிமிடங்கள்';
  String aboutAnHour(int minutes) => 'ஓர் மணி நேரம்';
  String hours(int hours) => '$hours மணி நேரங்கள்';
  String aDay(int hours) => 'ஓர் நாள்';
  String days(int days) => '$days நாட்கள்';
  String aboutAMonth(int days) => 'ஓர் மாதம்';
  String months(int months) => '$months மாதங்கள்';
  String aboutAYear(int year) => 'ஓராண்டு';
  String years(int years) => '$years ஆண்டுகள்';
  String wordSeparator() => ' ';
}
