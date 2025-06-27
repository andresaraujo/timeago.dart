import 'package:timeago/src/messages/lookupmessages.dart';

const Map<String, String> banglaDigits = {
  '0': '০',
  '1': '১',
  '2': '২',
  '3': '৩',
  '4': '৪',
  '5': '৫',
  '6': '৬',
  '7': '৭',
  '8': '৮',
  '9': '৯'
};

String convertToBanglaNumerals(String input) {
  return input.split('').map((char) => banglaDigits[char] ?? char).join();
}

/// Bangla Messages
class BnMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'আগে';
  @override
  String suffixFromNow() => 'এখন থেকে';
  @override
  String lessThanOneMinute(int seconds) => 'কিছুক্ষন';
  @override
  String aboutAMinute(int minutes) => 'প্রায় এক মিনিট';
  @override
  String minutes(int minutes) => '$minutes মিনিট';
  @override
  String aboutAnHour(int minutes) => 'প্রায় এক ঘন্টা';
  @override
  String hours(int hours) => '$hours ঘন্টা';
  @override
  String aDay(int hours) => 'এক দিন';
  @override
  String days(int days) => '${convertToBanglaNumerals(days.toString())} দিন';
  @override
  String aboutAMonth(int days) => 'প্রায় এক মাস';
  @override
  String months(int months) =>
      '${convertToBanglaNumerals(months.toString())} মাস';
  @override
  String aboutAYear(int year) => 'প্রায় এক বছর';
  @override
  String years(int years) => '${convertToBanglaNumerals(years.toString())} বছর';
  @override
  String wordSeparator() => ' ';
}

/// Bangla short Messages
class BnShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'এখন';
  @override
  String aboutAMinute(int minutes) => '১মিনিট ';
  @override
  String minutes(int minutes) =>
      '${convertToBanglaNumerals(minutes.toString())}মিনিট';
  @override
  String aboutAnHour(int minutes) => '~১ঘন্টা';
  @override
  String hours(int hours) =>
      '${convertToBanglaNumerals(hours.toString())}ঘন্টা';
  @override
  String aDay(int hours) => '~১দি';
  @override
  String days(int days) => '${convertToBanglaNumerals(days.toString())}দি';
  @override
  String aboutAMonth(int days) => '~১মাস';
  @override
  String months(int months) =>
      '${convertToBanglaNumerals(months.toString())}মাস';
  @override
  String aboutAYear(int year) => '~১বছর';
  @override
  String years(int years) => '${convertToBanglaNumerals(years.toString())}বছর';
  @override
  String wordSeparator() => ' ';
}
