import 'package:intl/intl.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Myanmar Messages
/// မြန်မာစာ
class MyMessages implements LookupMessages {
  @override
  String prefixAgo() => 'လွန်ခဲ့သော ';

  @override
  String prefixFromNow() => 'ယခုမှစ၍ ';

  @override
  String suffixAgo() => '';

  @override
  String suffixFromNow() => '';

  @override
  String lessThanOneMinute(int seconds) => 'စောနက';

  @override
  String aboutAMinute(int minutes) => '၁ မိနစ်';

  @override
  String minutes(int minutes) =>
      '${NumberFormat.compact(locale: 'my').format(minutes)} မိနစ်';

  @override
  String aboutAnHour(int minutes) => '၁ နာရီ';

  @override
  String hours(int hours) =>
      '${NumberFormat.compact(locale: 'my').format(hours)} နာရီ';

  @override
  String aDay(int hours) => '၁ ရက်';

  @override
  String days(int days) =>
      '${NumberFormat.compact(locale: 'my').format(days)} ရက်';

  @override
  String aboutAMonth(int days) => '၁ လ';

  @override
  String months(int months) =>
      '${NumberFormat.compact(locale: 'my').format(months)} လ';

  @override
  String aboutAYear(int year) => '၁ နှစ်';

  @override
  String years(int years) =>
      '${NumberFormat.compact(locale: 'my').format(years)} နှစ်';

  @override
  String wordSeparator() => ' ';
}
