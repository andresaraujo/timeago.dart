import 'package:timeago/timeago.dart' as timeago;

class CroatianMessages implements timeago.LookupMessages {
  @override
  String prefixAgo() => 'prije';

  @override
  String prefixFromNow() => 'za';

  @override
  String suffixAgo() => '';

  @override
  String suffixFromNow() => '';

  @override
  String lessThanOneMinute(int seconds) => 'manje od jedne minute';

  @override
  String aboutAMinute(int minutes) => 'oko jedne minute';

  @override
  String minutes(int minutes) {
    if (minutes % 100 == 11 ||
        minutes % 100 == 12 ||
        minutes % 100 == 13 ||
        minutes % 100 == 14) {
      return '$minutes minuta';
    }

    if (minutes % 10 == 1) return '$minutes minutu';

    if (minutes % 10 == 2 || minutes % 10 == 3 || minutes % 4 == 0) {
      return '$minutes minute';
    }

    return '$minutes minuta';
  }

  @override
  String aboutAnHour(int minutes) => 'oko jednog sata';

  @override
  String hours(int hours) {
    if (hours % 100 == 11 ||
        hours % 100 == 12 ||
        hours % 100 == 13 ||
        hours % 100 == 14) {
      return '$hours sati';
    }

    if (hours % 10 == 1) return '$hours sat';

    if (hours % 10 == 2 || hours % 10 == 3 || hours % 4 == 0) {
      return '$hours sata';
    }

    return '$hours sati';
  }

  @override
  String aDay(int hours) => 'jedan dan';

  @override
  String days(int days) {
    if (days % 100 == 11) return '$days dana';
    if (days % 10 == 1) return '$days dan';
    return '$days dana';
  }

  @override
  String aboutAMonth(int days) => 'oko jednog mjeseca';

  @override
  String months(int months) {
    if (months % 100 == 11 ||
        months % 100 == 12 ||
        months % 100 == 13 ||
        months % 100 == 14) {
      return '$months mjeseci';
    }

    if (months % 10 == 1) return '$months mjesec';

    if (months % 10 == 2 || months % 10 == 3 || months % 4 == 0) {
      return '$months mjeseca';
    }

    return '$months mjeseci';
  }

  @override
  String aboutAYear(int year) => 'oko jedne godine';

  @override
  String years(int years) {
    if (years % 100 == 11 ||
        years % 100 == 12 ||
        years % 100 == 13 ||
        years % 100 == 14) {
      return '$years godina';
    }

    if (years % 10 == 1) return '$years godinu';

    if (years % 10 == 2 || years % 10 == 3 || years % 4 == 0) {
      return '$years godine';
    }

    return '$years godina';
  }

  @override
  String wordSeparator() => ' ';
}
