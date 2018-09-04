import 'package:timeago/src/messages/lookupmessages.dart';

class IdMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => 'yang lalu';
  String suffixFromNow() => 'dari sekarang';
  String lessThanOneMinute(int seconds) => 'kurang dari semenit';
  String aboutAMinute(int minutes) => 'semenit';
  String minutes(int minutes) => '$minutes menit';
  String aboutAnHour(int minutes) => 'sekitar sejam';
  String hours(int hours) => '$hours jam';
  String aDay(int hours) => 'sehari';
  String days(int days) => '$days hari';
  String aboutAMonth(int days) => 'sekitar sebulan';
  String months(int months) => '$months bulan';
  String aboutAYear(int year) => 'sekitar setahun';
  String years(int years) => '$years tahun';
  String wordSeparator() => ' ';
}
