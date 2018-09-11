import 'package:timeago/src/messages/lookupmessages.dart';

class TrMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => 'önce';
  String suffixFromNow() => 'şimdi';
  String lessThanOneMinute(int seconds) => 'biraz';
  String aboutAMinute(int minutes) => 'bir dakika';
  String minutes(int minutes) => '$minutes dakika';
  String aboutAnHour(int minutes) => 'bir saat';
  String hours(int hours) => '$hours saat';
  String aDay(int hours) => 'bir gün';
  String days(int days) => '$days gün';
  String aboutAMonth(int days) => 'bir ay';
  String months(int months) => '$months ay';
  String aboutAYear(int year) => 'bir yıl';
  String years(int years) => '$years yıl';
  String wordSeparator() => ' ';
}
