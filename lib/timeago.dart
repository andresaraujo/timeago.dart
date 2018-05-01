library timeago;

import 'dart:async';

import 'package:intl/intl.dart';
import 'package:timeago/src/i18/messages_all.dart' as i18;
import 'package:timeago/src/all_messages.dart' as messages;


final defaultInstance = new Timeago();

void setDefaultConfig({String locale}) {
  defaultInstance.locale = locale;
}

Future<String> format(DateTime date, {String locale, DateTime Function() clock}) =>
    defaultInstance.format(date, locale: locale, clock: clock);

enum TimeagoLocale { en, en_short, es }

class Timeago {
  //TimeagoMessageLookup messages = new TimeagoMessageLookup();
  String locale;
  DateTime Function() clock;
  Timeago({this.locale = 'es', DateTime Function() clock}) {
    this.clock = clock ?? () => new DateTime.now();
  }

  Future<String> format(DateTime date, {String locale, DateTime Function() clock}) async {
    final _clock = clock ?? this.clock;
    var elapsed = _clock().millisecondsSinceEpoch - date.millisecondsSinceEpoch;

    final _locale = locale ?? this.locale;
    await i18.initializeMessages(_locale);

    String prefix;
    String suffix;
    String time;
    bool until = false;
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

    return new Future.value([prefix, time, suffix]
        .where((str) => str != null && str.isNotEmpty)
        .join(messages.wordSeparator()));
  }
}

class TimeagoMessageLookup {
  String prefixAgo() => Intl.message('',
      name: "prefixAgo", args: [], desc: "A message when for prefix ago");

  String prefixFromNow() => Intl.message('',
      name: "prefixFromNow",
      args: [],
      desc: "A message when for prefix from now");

  String suffixAgo() => Intl.message('ago',
      name: "suffixAgo", args: [], desc: "A message when for suffix ago");

  String suffixFromNow() => Intl.message('from now',
      name: "suffixFromNow",
      args: [],
      desc: "A message when for suffix from now");

  String lessThanOneMinute() => Intl.message('just a moment',
      name: "lessThanOneMinute",
      args: [],
      desc: "A message when the elapsed time was less than one minute");

  String aboutAMinute() => Intl.message('a minute',
      name: "aboutAMinute",
      args: [],
      desc: "A message when the elapsed time was about a minute");

  String minutes(int minutes) => Intl.message("${Intl.plural(minutes,
      zero: '',
      one: '$minutes minute',
      other: '$minutes minutes')}",
      name: "minutes",
      args: [minutes],
      desc: "A message indicating the number of minutes");

  String aboutAnHour() => Intl.message('an hour',
      name: "aboutAnHour",
      args: [],
      desc: "A message when the elapsed time was about an hour");

  String hours(int hours) => Intl.message("${Intl.plural(hours,
      zero: '',
      one: '$hours hour',
      other: '$hours hours')}",
      name: "hours",
      args: [hours],
      desc: "A message indicating the number of hours");

  String aDay() => Intl.message('a day',
      name: "aDay", args: [], desc: "A message when the elapsed time was a day");

  String days(int days) => Intl.message("${Intl.plural(days,
      zero: '',
      one: '$days day',
      other: '$days days')}",
      name: "days",
      args: [days],
      desc: "A message indicating the number of days");

  String aboutAMonth() => Intl.message('a month',
      name: "aboutAMonth",
      args: [],
      desc: "A message when the elapsed time was about a month");

  String months(int months) => Intl.message("${Intl.plural(months,
      zero: '',
      one: '$months month',
      other: '$months months')}",
      name: "months",
      args: [months],
      desc: "A message indicating the number of months");

  String aboutAYear() => Intl.message('a year',
      name: "aboutAYear",
      args: [],
      desc: "A message when the elapsed time was about a year");

  String years(int years) => Intl.message("${Intl.plural(years,
      zero: '',
      one: '$years year',
      other: '$years years')}",
      name: "years",
      args: [years],
      desc: "A message indicating the number of years");

  String wordSeparator() => Intl.message(' ',
      name: "wordSeparator", args: [], desc: "A message for the word separator");
}

class EnglishMessages extends TimeagoMessageLookup {}