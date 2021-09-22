import 'package:timeago/src/ago_or_from_now.dart';

/// [LookupMessages] template for any language
abstract class LookupMessages {
  /// Example: `prefixAgo()` 1 min `suffixAgo()`
  String prefixAgo();

  /// Example: `prefixFromNow()` 1 min `suffixFromNow()`
  String prefixFromNow();

  /// Example: `prefixAgo()` 1 min `suffixAgo()`
  String suffixAgo();

  /// Example: `prefixFromNow()` 1 min `suffixFromNow()`
  String suffixFromNow();

  /// Format when time is less than a minute
  String lessThanOneMinute(int seconds, AgoOrFromNow agoOrFromNow);

  /// Format when time is about a minute
  String aboutAMinute(int minutes, AgoOrFromNow agoOrFromNow);

  /// Format when time is in minutes
  String minutes(int minutes, AgoOrFromNow agoOrFromNow);

  /// Format when time is about an hour
  String aboutAnHour(int minutes, AgoOrFromNow agoOrFromNow);

  /// Format when time is in hours
  String hours(int hours, AgoOrFromNow agoOrFromNow);

  /// Format when time is a day
  String aDay(int hours, AgoOrFromNow agoOrFromNow);

  /// Format when time is in days
  String days(int days, AgoOrFromNow agoOrFromNow);

  /// Format when time is about a month
  String aboutAMonth(int days, AgoOrFromNow agoOrFromNow);

  /// Format when time is in months
  String months(int months, AgoOrFromNow agoOrFromNow);

  /// Format when time is about a year
  String aboutAYear(int year, AgoOrFromNow agoOrFromNow);

  /// Format when time is about a year
  String years(int years, AgoOrFromNow agoOrFromNow);

  /// word separator when words are concatenated
  String wordSeparator() => ' ';
}
