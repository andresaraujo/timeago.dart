import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Russian messages
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
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'минуту';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'минуту';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes ${_convert(minutes, 'minutes')}';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'час';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours ${_convert(hours, 'hours')}';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'день';
  @override
  String days(int days, AgoOrFromNow _) => '$days ${_convert(days, 'days')}';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'месяц';
  @override
  String months(int months, AgoOrFromNow _) => '$months ${_convert(months, 'months')}';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'год';
  @override
  String years(int years, AgoOrFromNow _) => '$years ${_convert(years, 'years')}';
  @override
  String wordSeparator() => ' ';

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
}

class RuShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'только что';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '1 мин.';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes мин.';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~1 ч.';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours ч.';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~1 д.';
  @override
  String days(int days, AgoOrFromNow _) => '$days д.';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~1 мес.';
  @override
  String months(int months, AgoOrFromNow _) => '$months мес.';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1 г.';
  @override
  String years(int years, AgoOrFromNow _) => '$years г.';
  @override
  String wordSeparator() => ' ';
}
