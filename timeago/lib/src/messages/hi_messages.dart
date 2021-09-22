import 'package:timeago/src/ago_or_from_now.dart';
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
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'एक क्षण पहले';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'एक मिनट पहले';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes मिनट';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'करीब एक घंटा';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours घंटे';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'एक दिन पहले';
  @override
  String days(int days, AgoOrFromNow _) => '$days दिन';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'तक़रीबन एक महीना';
  @override
  String months(int months, AgoOrFromNow _) => '$months महीने';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'एक साल पहले';
  @override
  String years(int years, AgoOrFromNow _) => '$years वर्षों पहले';
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
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'अभी अभी';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '1 मि';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes मि';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~1 घं';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours घं';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~1 दि';
  @override
  String days(int days, AgoOrFromNow _) => '$days दि';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~1 म';
  @override
  String months(int months, AgoOrFromNow _) => '$months म';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1 सा';
  @override
  String years(int years, AgoOrFromNow _) => '$years सा';
  @override
  String wordSeparator() => ' ';
}
