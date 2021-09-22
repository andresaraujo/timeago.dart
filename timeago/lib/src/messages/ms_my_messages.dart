import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Malay-Malaysia messages
class MsMyMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'lepas';
  @override
  String suffixFromNow() => 'dari sekarang';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'saat';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'seminit';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes minit';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'sejam';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours jam';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'sehari';
  @override
  String days(int days, AgoOrFromNow _) => '$days hari';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'sebulan';
  @override
  String months(int months, AgoOrFromNow _) => '$months bulan';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'setahun';
  @override
  String years(int years, AgoOrFromNow _) => '$years tahun';
  @override
  String wordSeparator() => ' ';
}

/// Malay-Malaysia short messages
class MsMyShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'sekarang';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '1 min';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes min';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~1 jam';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours jam';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~1 hri';
  @override
  String days(int days, AgoOrFromNow _) => '$days hri';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~1 bln';
  @override
  String months(int months, AgoOrFromNow _) => '$months bln';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1 thn';
  @override
  String years(int years, AgoOrFromNow _) => '$years thn';
  @override
  String wordSeparator() => ' ';
}
