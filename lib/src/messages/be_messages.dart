import 'package:timeago/src/messages/lookupmessages.dart';

/// Belarusian messages (code based by russian and ukrainian translations)
class BeMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => 'праз';
  @override
  String suffixAgo() => 'таму';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'хвіліна';
  @override
  String aboutAMinute(int minutes) => 'хвіліна';
  @override
  String minutes(int minutes) => '$minutes ${_convert(minutes, 'minutes')}';
  @override
  String aboutAnHour(int minutes) => 'гадзіна';
  @override
  String hours(int hours) => '$hours ${_convert(hours, 'hours')}';
  @override
  String aDay(int hours) => 'дзень';
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
        'minutes' => 'хвіліну',
        'hours' => 'гадзіна',
        'days' => 'дзень',
        'months' => 'месяц',
        'years' => 'год',
        _ => '',
      };
    } else if (<int>[2, 3, 4].contains(mod) &&
        !<int>[12, 13, 14].contains(modH)) {
      return switch (type) {
        'minutes' => 'хвіліны',
        'hours' => 'гадзіны',
        'days' => 'дня',
        'months' => 'месяца',
        'years' => 'гады',
        _ => '',
      };
    }
    return switch (type) {
      'minutes' => 'хвілін',
      'hours' => 'гадзін',
      'days' => 'дзён',
      'months' => 'месяцаў',
      'years' => 'гадоў',
      _ => '',
    };
  }
}

class BeShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'толькі што';
  @override
  String aboutAMinute(int minutes) => '~1 мін.';
  @override
  String minutes(int minutes) => '$minutes мін.';
  @override
  String aboutAnHour(int minutes) => '~1 гад.';
  @override
  String hours(int hours) => '$hours гад.';
  @override
  String aDay(int hours) => '~1 дзн.';
  @override
  String days(int days) => '$days дзн.';
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
