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

  String _convert(int number, String type) {
    int mod = number % 10;
    int modH = number % 100;

    if (mod == 1 && modH != 11) {
      return switch (type) {
        'minutes' => 'минуту',
        'hours' => 'час',
        'days' => 'день',
        'months' => 'месяц',
        'years' => 'год',
        _ => '',
      };
    } else if (<int>[2, 3, 4].contains(mod) &&
        !<int>[12, 13, 14].contains(modH)) {
      return switch (type) {
        'minutes' => 'минуты',
        'hours' => 'часа',
        'days' => 'дня',
        'months' => 'месяца',
        'years' => 'года',
        _ => '',
      };
    }
    return switch (type) {
      'minutes' => 'минут',
      'hours' => 'часов',
      'days' => 'дней',
      'months' => 'месяцев',
      'years' => 'лет',
      _ => '',
    };
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
  String lessThanOneMinute(int seconds) => 'только что';
  @override
  String aboutAMinute(int minutes) => '1 мин.';
  @override
  String minutes(int minutes) => '$minutes мин.';
  @override
  String aboutAnHour(int minutes) => '~1 ч.';
  @override
  String hours(int hours) => '$hours ч.';
  @override
  String aDay(int hours) => '~1 д.';
  @override
  String days(int days) => '$days д.';
  @override
  String aboutAMonth(int days) => '~1 мес.';
  @override
  String months(int months) => '$months мес.';
  @override
  String aboutAYear(int year) => '~1 г.';
  @override
  String years(int years) => '$years г.';
  @override
  String wordSeparator() => ' ';
}
