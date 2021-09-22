import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Indonesian messages
class IdMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'yang lalu';
  @override
  String suffixFromNow() => 'dari sekarang';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'kurang dari semenit';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'semenit';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes menit';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'sekitar sejam';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours jam';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'sehari';
  @override
  String days(int days, AgoOrFromNow _) => '$days hari';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'sekitar sebulan';
  @override
  String months(int months, AgoOrFromNow _) => '$months bulan';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'sekitar setahun';
  @override
  String years(int years, AgoOrFromNow _) => '$years tahun';
  @override
  String wordSeparator() => ' ';
}
