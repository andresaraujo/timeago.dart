library timeago;

import 'dart:async';
import 'package:intl/intl.dart';

import 'src/i18/messages_all.dart' as i18;
import 'src/all_messages.dart' as strings;

class TimeAgo {
  String _locale = "en_US";

  changeLocale(String locale) async {
    if (_locale != locale) {
      _locale = locale;
      await initializeLocale();
    }
  }

  String timeAgo(int millis) {
    return time(new DateTime.now().millisecondsSinceEpoch - millis, false);
  }

  String timeUntil(int millis) {
    return time(millis - new DateTime.now().millisecondsSinceEpoch, true);
  }

  String time(int distanceMillis, final bool allowFuture) {
    String prefix;
    String suffix;
    String time;

    Intl.withLocale(_locale, () {
      if (allowFuture && distanceMillis < 0) {
        distanceMillis = distanceMillis.abs();
        prefix = strings.prefixFromNow();
        suffix = strings.suffixFromNow();
      } else {
        prefix = strings.prefixAgo();
        suffix = strings.suffixAgo();
      }

      final num seconds = distanceMillis / 1000;
      final num minutes = seconds / 60;
      final num hours = minutes / 60;
      final num days = hours / 24;
      final num months = days / 30;
      final num years = days / 365;

      if (seconds < 45) time = strings.lessThanOneMinute();
      else if (seconds < 90) time = strings.aboutAMinute();
      else if (minutes < 45) time = strings.minutes(minutes.round());
      else if (minutes < 90) time = strings.aboutAnHour();
      else if (hours < 24) time = strings.hours(hours.round());
      else if (hours < 48) time = strings.aDay();
      else if (days < 30) time = strings.days(days.round());
      else if (days < 60) time = strings.aboutAMonth();
      else if (days < 365) time = strings.months(months.round());
      else if (years < 2) time = strings.aboutAYear();
      else time = strings.years(years.round());
    });

    return [prefix, time, suffix]
        .where((str) => str != null && str.isNotEmpty)
        .join(strings.wordSeparator());
  }

  Future<List> initializeLocale() {
    var messages = i18.initializeMessages(_locale);
    return Future.wait([messages]);
  }
}
