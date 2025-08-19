import 'package:timeago/src/messages/lookupmessages.dart';

/// Georgian Messages
class KaMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'წინ';
  @override
  String suffixFromNow() => 'ამიერიდან';
  @override
  String lessThanOneMinute(int seconds) => 'ერთ წუთზე ნაკლები';
  @override
  String aboutAMinute(int minutes) => 'წუთი';
  @override
  String minutes(int minutes) => '$minutes წუთი';
  @override
  String aboutAnHour(int minutes) => 'დაახლოებით 1 საათი';
  @override
  String hours(int hours) => '$hours საათი';
  @override
  String aDay(int hours) => 'დღე';
  @override
  String days(int days) => '$days დღე';
  @override
  String aboutAMonth(int days) => 'დაახლოებით 1 თვე';
  @override
  String months(int months) => '$months თვე';
  @override
  String aboutAYear(int year) => 'დაახლოებით 1 წელი';
  @override
  String years(int years) => '$years წელი';
  @override
  String wordSeparator() => ' ';
}

/// Georgian short Messages
class KaShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'ახლა';
  @override
  String aboutAMinute(int minutes) => '1წთ';
  @override
  String minutes(int minutes) => '${minutes}წთ';
  @override
  String aboutAnHour(int minutes) => '~1სთ';
  @override
  String hours(int hours) => '${hours}სთ';
  @override
  String aDay(int hours) => '~1დღ';
  @override
  String days(int days) => '${days}დღ';
  @override
  String aboutAMonth(int days) => '~1თვ';
  @override
  String months(int months) => '${months}თვ';
  @override
  String aboutAYear(int year) => '~1წ';
  @override
  String years(int years) => '${years}წ';
  @override
  String wordSeparator() => ' ';
}
