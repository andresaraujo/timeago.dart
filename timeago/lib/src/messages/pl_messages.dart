import 'package:timeago/src/messages/lookupmessages.dart';

/// Polish messgages
class PlMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'temu';
  @override
  String suffixFromNow() => 'od tego momentu';
  @override
  String lessThanOneMinute(int seconds) => 'chwilę';
  @override
  String aboutAMinute(int minutes) => 'około minuty';
  @override
  String minutes(int minutes) => _pluralize(minutes, 'minuty', 'minut');
  @override
  String aboutAnHour(int minutes) => 'około godziny';
  @override
  String hours(int hours) => _pluralize(hours, 'godziny', 'godzin');
  @override
  String aDay(int hours) => 'dzień';
  @override
  String days(int days) => '$days dni';
  @override
  String aboutAMonth(int days) => 'około miesiąca';
  @override
  String months(int months) => _pluralize(months, 'miesiące', 'miesięcy');
  @override
  String aboutAYear(int year) => 'około roku';
  @override
  String years(int years) => _pluralize(years, 'lata', 'lat');
  @override
  String wordSeparator() => ' ';

  String _pluralize(int n, String form1, String form2) {
    // Rules as per https://www.gnu.org/software/gettext/manual/html_node/Plural-forms.html
    if (n % 10 >= 2 && n % 10 <= 4 && (n % 100 < 10 || n % 100 >= 20)) {
      return '$n $form1';
    }

    return '$n $form2';
  }
}
