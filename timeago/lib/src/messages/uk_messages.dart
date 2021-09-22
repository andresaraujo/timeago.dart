import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Ukrainian messages
class UkMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => 'через';
  @override
  String suffixAgo() => 'тому';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'хвилину';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'хвилину';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes ${_convert(minutes, 'minutes')}';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'годину';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours ${_convert(hours, 'hours')}';
  @override
  String aDay(int hours, AgoOrFromNow _) => 'день';
  @override
  String days(int days, AgoOrFromNow _) => '$days ${_convert(days, 'days')}';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'місяць';
  @override
  String months(int months, AgoOrFromNow _) => '$months ${_convert(months, 'months')}';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'рік';
  @override
  String years(int years, AgoOrFromNow _) => '$years ${_convert(years, 'years')}';
  @override
  String wordSeparator() => ' ';
}

String _convert(int number, String type) {
  var mod = number % 10;
  var modH = number % 100;

  if (mod == 1 && modH != 11) {
    switch (type) {
      case 'minutes':
        return 'хвилину';
      case 'hours':
        return 'годину';
      case 'days':
        return 'день';
      case 'months':
        return 'місяць';
      case 'years':
        return 'рік';
      default:
        return '';
    }
  } else if (<int>[2, 3, 4].contains(mod) &&
      !<int>[12, 13, 14].contains(modH)) {
    switch (type) {
      case 'minutes':
        return 'хвилини';
      case 'hours':
        return 'години';
      case 'days':
        return 'дні';
      case 'months':
        return 'місяця';
      case 'years':
        return 'роки';
      default:
        return '';
    }
  }
  switch (type) {
    case 'minutes':
      return 'хвилин';
    case 'hours':
      return 'годин';
    case 'days':
      return 'днів';
    case 'months':
      return 'місяців';
    case 'years':
      return 'років';
    default:
      return '';
  }
}

class UkShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'тільки що';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '~1 хв.';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes хв.';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~1 год.';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours год.';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~1 д.';
  @override
  String days(int days, AgoOrFromNow _) => '$days д.';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~1 міс.';
  @override
  String months(int months, AgoOrFromNow _) => '$months міс.';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1 р.';
  @override
  String years(int years, AgoOrFromNow _) => '$years р.';
  @override
  String wordSeparator() => ' ';
}
