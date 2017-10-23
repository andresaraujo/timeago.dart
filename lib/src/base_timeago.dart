library timeago;

import 'dart:async';
import 'package:intl/intl.dart';

import 'all_messages.dart' as messages;

typedef InitializeMessages = Future Function(String localName);
class BaseTimeAgo {
  InitializeMessages initializeMessages;
  BaseTimeAgo(this.initializeMessages, {String locale}) {
    assert(initializeMessages != null);
    this.locale = locale ?? 'en_US';
  }

  String locale;

  ///
  /// Initialize messages for [locale]
  ///
  Future<List> initializeLocale(String locale) {
    var messages = initializeMessages(locale);
    return Future.wait([messages]);
  }

  ///
  /// Converts [date] into a fuzzy date string.
  ///
  /// If [until] is `true` date in the future will use the prefix from now.
  /// By default it will use the "ago" prefix.
  ///
  /// By default, this uses "es_US" locale, to change locale call
  /// [initializeLocale] first.
  ///
  /// ```
  /// final ta = new TimeAgo();
  /// ta.format(new DateTime.now().subtract(new Duration(days: 2)); // 2 days ago
  ///
  /// ta.format(
  ///   new DateTime.now().add(new Duration(days: 2),
  ///   allowFuture: true
  /// ); // 2 days ago
  /// ```
  ///
  ///
  String format(DateTime date, {String locale, until: false}) {
    final _locale = locale ?? this.locale;
    var millis;

    if (date is int) {
      millis = date;
    } else if (date is DateTime) {
      millis = date.millisecondsSinceEpoch;
    }

    var elapsed = new DateTime.now().millisecondsSinceEpoch - millis;

    String prefix;
    String suffix;
    String time;
    Intl.withLocale(_locale, () {
      if (until && elapsed < 0) {
        elapsed = elapsed.abs();
        prefix = messages.prefixFromNow();
        suffix = messages.suffixFromNow();
      } else {
        prefix = messages.prefixAgo();
        suffix = messages.suffixAgo();
      }

      final num seconds = elapsed / 1000;
      final num minutes = seconds / 60;
      final num hours = minutes / 60;
      final num days = hours / 24;
      final num months = days / 30;
      final num years = days / 365;

      if (seconds < 45)
        time = messages.lessThanOneMinute();
      else if (seconds < 90)
        time = messages.aboutAMinute();
      else if (minutes < 45)
        time = messages.minutes(minutes.round());
      else if (minutes < 90)
        time = messages.aboutAnHour();
      else if (hours < 24)
        time = messages.hours(hours.round());
      else if (hours < 48)
        time = messages.aDay();
      else if (days < 30)
        time = messages.days(days.round());
      else if (days < 60)
        time = messages.aboutAMonth();
      else if (days < 365)
        time = messages.months(months.round());
      else if (years < 2)
        time = messages.aboutAYear();
      else
        time = messages.years(years.round());
    });

    return [prefix, time, suffix]
        .where((str) => str != null && str.isNotEmpty)
        .join(messages.wordSeparator());
  }
}
