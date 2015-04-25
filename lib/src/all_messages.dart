import 'package:intl/intl.dart';

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

String lessThanOneMinute() => Intl.message('less than a minute',
    name: "lessThanOneMinute",
    args: [],
    desc: "A message when the elapsed time was less than one minute");

String aboutAMinute() => Intl.message('about a minute',
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

String aboutAnHour() => Intl.message('about an hour',
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

String aboutAMonth() => Intl.message('about a month',
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

String aboutAYear() => Intl.message('about a year',
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
