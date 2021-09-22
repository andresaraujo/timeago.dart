import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Urdu Messages
class UrMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'پہلے';
  @override
  String suffixFromNow() => 'اب سے';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'ایک لمحہ';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'ایک منٹ';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '${acmoConvertToUrduNumbers(minutes)} منٹ';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'ایک گھنٹہ';
  @override
  String hours(int hours, AgoOrFromNow _) => '${acmoConvertToUrduNumbers(hours)} گھنٹے';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'ایک دن';
  @override
  String days(int days, AgoOrFromNow _) => '${acmoConvertToUrduNumbers(days)} دن';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'ایک مہینہ';
  @override
  String months(int months, AgoOrFromNow _) => '${acmoConvertToUrduNumbers(months)} مہینہ';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'ایک سال';
  @override
  String years(int years, AgoOrFromNow _) => '${acmoConvertToUrduNumbers(years)} برس';
  @override
  String wordSeparator() => ' ';
}

/// Urdu short Messages
class ShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'ابھی';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '١ م';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '${acmoConvertToUrduNumbers(minutes)} منٹ';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~١ گھ';
  @override
  String hours(int hours, AgoOrFromNow _) => '${acmoConvertToUrduNumbers(hours)} گھ';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~١ د';
  @override
  String days(int days, AgoOrFromNow _) => '${acmoConvertToUrduNumbers(days)} د';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~١ ماہ';
  @override
  String months(int months, AgoOrFromNow _) => '${acmoConvertToUrduNumbers(months)} ماہ';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~١ س';
  @override
  String years(int years, AgoOrFromNow _) => '${acmoConvertToUrduNumbers(years)} س';
  @override
  String wordSeparator() => ' ';
}

String acmoConvertToUrduNumbers(int input) {
  const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  const urdu = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];

  var result = input.toString();
  for (var i = 0; i < english.length; i++) {
    result = result.replaceAll(english[i], urdu[i]);
  }

  return result;
}
