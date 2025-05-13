import 'package:timeago/src/messages/lookupmessages.dart';

/// Russian messages
class LvMessages implements LookupMessages {
  @override
  String prefixAgo() => 'pirms';
  @override
  String prefixFromNow() => 'pēc';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'minūtes';
  @override
  String aboutAMinute(int minutes) => 'minūtes';
  @override
  String minutes(int minutes) => '$minutes ${_convert(minutes, 'minutes')}';
  @override
  String aboutAnHour(int minutes) => 'stundas';
  @override
  String hours(int hours) => '$hours ${_convert(hours, 'hours')}';
  @override
  String aDay(int hours) => 'dienas';
  @override
  String days(int days) => '$days ${_convert(days, 'days')}';
  @override
  String aboutAMonth(int days) => 'mēneša';
  @override
  String months(int months) => '$months ${_convert(months, 'months')}';
  @override
  String aboutAYear(int year) => 'gada';
  @override
  String years(int years) => '$years ${_convert(years, 'years')}';
  @override
  String wordSeparator() => ' ';

  String _convert(int number, String type) {
    var mod = number % 10;

    if (mod == 1) {
      switch (type) {
        case 'minutes':
          return 'minūtes';
        case 'hours':
          return 'stundas';
        case 'days':
          return 'dienas';
        case 'months':
          return 'mēneša';
        case 'years':
          return 'gada';
        default:
          return '';
      }
    }
    switch (type) {
      case 'minutes':
        return 'minūtēm';
      case 'hours':
        return 'stundām';
      case 'days':
        return 'dienām';
      case 'months':
        return 'mēnešiem';
      case 'years':
        return 'gadiem';
      default:
        return '';
    }
  }
}

class LvShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'tikai tagad';
  @override
  String aboutAMinute(int minutes) => '1 min.';
  @override
  String minutes(int minutes) => '$minutes min.';
  @override
  String aboutAnHour(int minutes) => '~1 st.';
  @override
  String hours(int hours) => '$hours st.';
  @override
  String aDay(int hours) => '~1 d.';
  @override
  String days(int days) => '$days d.';
  @override
  String aboutAMonth(int days) => '~1 mēn.';
  @override
  String months(int months) => '$months mēn.';
  @override
  String aboutAYear(int year) => '~1 g.';
  @override
  String years(int years) => '$years g.';
  @override
  String wordSeparator() => ' ';
}
