import 'package:timeago/src/messages/lookupmessages.dart';

/// Hindi Messages
class HiMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'पूर्व';
  @override
  String suffixFromNow() => 'अब से';
  @override
  String lessThanOneMinute(int seconds) => 'एक क्षण पहले';
  @override
  String aboutAMinute(int minutes) => 'एक मिनट पहले';
  @override
  String minutes(int minutes) => '$minutes मिनट';
  @override
  String aboutAnHour(int minutes) => 'करीब एक घंटा';
  @override
  String hours(int hours) => '$hours घंटे';
  @override
  String aDay(int hours) => 'एक दिन पहले';
  @override
  String days(int days) => '$days दिन';
  @override
  String aboutAMonth(int days) => 'तक़रीबन एक महीना';
  @override
  String months(int months) => '$months महीने';
  @override
  String aboutAYear(int year) => 'एक साल पहले';
  @override
  String years(int years) => '$years वर्षों पहले';
  @override
  String wordSeparator() => ' ';
}

/// Hindi short Messages
class HiShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'अभी अभी';
  @override
  String aboutAMinute(int minutes) => '1 मि';
  @override
  String minutes(int minutes) => '$minutes मि';
  @override
  String aboutAnHour(int minutes) => '~1 घं';
  @override
  String hours(int hours) => '$hours घं';
  @override
  String aDay(int hours) => '~1 दि';
  @override
  String days(int days) => '$days दि';
  @override
  String aboutAMonth(int days) => '~1 म';
  @override
  String months(int months) => '$months म';
  @override
  String aboutAYear(int year) => '~1 सा';
  @override
  String years(int years) => '$years सा';
  @override
  String wordSeparator() => ' ';
}
