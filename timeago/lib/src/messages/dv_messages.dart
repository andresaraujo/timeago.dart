import 'package:timeago/src/messages/lookupmessages.dart';

class DvMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => 'ކުރިން';
  String suffixFromNow() => 'ފަހުން';
  String lessThanOneMinute(int seconds) => 'ހިނދުކޮޅެއް';
  String aboutAMinute(int minutes) => 'މިނެޓެއް ހާއިރު';
  String minutes(int minutes) => '$minutes މިނެޓު';
  String aboutAnHour(int minutes) => 'ގަޑިއިރެއް ހާއިރު';
  String hours(int hours) => '$hours ގަޑިއިރު';
  String aDay(int hours) => 'އެއް ދުވަސް';
  String days(int days) => '$days ދުވަސް';
  String aboutAMonth(int days) => 'މަހެއް ހާ ދުވަސް';
  String months(int months) => '$months މަސް';
  String aboutAYear(int year) => 'އަހަރެއް ހާ ދުވަސް';
  String years(int years) => '$years އަހަރު';
  String wordSeparator() => ' ';
}

class DvShortMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => '';
  String suffixFromNow() => '';
  String lessThanOneMinute(int seconds) => 'މިހާރު';
  String aboutAMinute(int minutes) => '1 މިނެޓް';
  String minutes(int minutes) => '$minutes މިނެޓް';
  String aboutAnHour(int minutes) => '~1 ގ';
  String hours(int hours) => '$hours ގ';
  String aDay(int hours) => '~1 ދުވަސް';
  String days(int days) => '$days ދުވަސް';
  String aboutAMonth(int days) => '~1 މަސް';
  String months(int months) => '$months މަސް';
  String aboutAYear(int year) => '~1 އަހަރު';
  String years(int years) => '$years އަހަރު';
  String wordSeparator() => ' ';
}