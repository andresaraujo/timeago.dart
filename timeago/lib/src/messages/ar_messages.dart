import 'package:timeago/src/messages/lookupmessages.dart';

class ArMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => 'منذ';
  String suffixFromNow() => 'من الأن';
  String lessThanOneMinute(int seconds) => 'لحظة';
  String aboutAMinute(int minutes) => 'دقيقة';
  String minutes(int minutes) => '$minutes دقائق';
  String aboutAnHour(int minutes) => 'حوالي ساعة';
  String hours(int hours) => '$hours ساعات';
  String aDay(int hours) => 'يوم';
  String days(int days) => '$days أيام';
  String aboutAMonth(int days) => 'حوالي شهر';
  String months(int months) => '$months شهور';
  String aboutAYear(int year) => 'حوالي سنة';
  String years(int years) => '$years سنوات';
  String wordSeparator() => ' ';
}

class ArShortMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => '';
  String suffixFromNow() => '';
  String lessThanOneMinute(int seconds) => 'الأن';
  String aboutAMinute(int minutes) => 'دقيقة واحدة';
  String minutes(int minutes) => '$minutes د';
  String aboutAnHour(int minutes) => '~1 س';
  String hours(int hours) => '$hours س';
  String aDay(int hours) => '~1 ي';
  String days(int days) => '$days ي';
  String aboutAMonth(int days) => '~1 ش';
  String months(int months) => '$months ش';
  String aboutAYear(int year) => '~1 س';
  String years(int years) => '$years س';
  String wordSeparator() => ' ';
}
