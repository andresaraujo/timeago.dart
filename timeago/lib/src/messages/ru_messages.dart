import 'package:timeago/src/messages/lookupmessages.dart';

class RuMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => 'через';
  @override
  String suffixAgo() => 'назад';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'минуту';
  @override
  String aboutAMinute(int minutes) => 'минуту';
  @override
  String minutes(int minutes) => '$minutes ${_convert(minutes, 'minutes')}';
  @override
  String aboutAnHour(int minutes) => 'час';
  @override
  String hours(int hours) => '$hours ${_convert(hours, 'hours')}';
  @override
  String aDay(int hours) => 'день';
  @override
  String days(int days) => '$days ${_convert(days, 'days')}';
  @override
  String aboutAMonth(int days) => 'месяц';
  @override
  String months(int months) => '$months ${_convert(months, 'months')}';
  @override
  String aboutAYear(int year) => 'год';
  @override
  String years(int years) => '$years ${_convert(years, 'years')}';
  @override
  String wordSeparator() => ' ';
}

String _convert(int number, String type) {
  var mod = number % 10;
  var modH = number % 100;

  if (mod == 1 && modH != 11) {
    switch (type) {
      case 'minutes':
        return 'минуту';
      case 'hours':
        return 'час';
      case 'days':
        return 'день';
      case 'months':
        return 'месяц';
      case 'years':
        return 'год';
      default:
        return '';
    }
  } else if (<int>[2, 3, 4].contains(mod) &&
      !<int>[12, 13, 14].contains(modH)) {
    switch (type) {
      case 'minutes':
        return 'минуты';
      case 'hours':
        return 'часа';
      case 'days':
        return 'дня';
      case 'months':
        return 'месяца';
      case 'years':
        return 'года';
      default:
        return '';
    }
  }
  switch (type) {
    case 'minutes':
      return 'минут';
    case 'hours':
      return 'часов';
    case 'days':
      return 'дней';
    case 'months':
      return 'месяцев';
    case 'years':
      return 'лет';
    default:
      return '';
  }
}
