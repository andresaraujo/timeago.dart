import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Turkish messages
class TrMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'önce';
  @override
  String suffixFromNow() => 'kaldı';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'biraz';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'bir dakika';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes dakika';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'bir saat';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours saat';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'bir gün';
  @override
  String days(int days, AgoOrFromNow _) => '$days gün';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'bir ay';
  @override
  String months(int months, AgoOrFromNow _) => '$months ay';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'bir yıl';
  @override
  String years(int years, AgoOrFromNow _) => '$years yıl';
  @override
  String wordSeparator() => ' ';
}
