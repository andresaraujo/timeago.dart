import 'package:timeago/src/messages/lookupmessages.dart';

class PlMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => 'temu';
  String suffixFromNow() => 'od tego momentu';
  String lessThanOneMinute(int seconds) => 'chwilę';
  String aboutAMinute(int minutes) => 'około minutę';
  String minutes(int minutes) => _pluralize(minutes, 'minuty', 'minut');
  String aboutAnHour(int minutes) => 'około godzinę';
  String hours(int hours) => _pluralize(hours, 'godziny', 'godzin');
  String aDay(int hours) => 'dzień';
  String days(int days) => '$days dni';
  String aboutAMonth(int days) => 'około miesiąc';
  String months(int months) => _pluralize(months, 'miesiące', 'miesięcy');
  String aboutAYear(int year) => 'około rok';
  String years(int years) => _pluralize(years, 'lata', 'lat');
  String wordSeparator() => ' ';

  String _pluralize(int n, String form1, String form2) {
    // Rules as per https://www.gnu.org/software/gettext/manual/html_node/Plural-forms.html
    if (n % 10 >= 2 && n % 10 <= 4 && (n % 100 < 10 || n % 100 >= 20)) {
      return '$n $form1';
    }

    return '$n $form2';
  }
}
