import 'package:timeago/src/ago_or_from_now.dart';
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
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'chwilę';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'około minuty';
  @override
  String minutes(int minutes, AgoOrFromNow _) => _pluralize(minutes, 'minuty', 'minut');
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'około godziny';
  @override
  String hours(int hours, AgoOrFromNow _) => _pluralize(hours, 'godziny', 'godzin');
  @override
  String aDay(int hours, AgoOrFromNow _) => 'dzień';
  @override
  String days(int days, AgoOrFromNow _) => '$days dni';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'około miesiąca';
  @override
  String months(int months, AgoOrFromNow _) => _pluralize(months, 'miesiące', 'miesięcy');
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'około roku';
  @override
  String years(int years, AgoOrFromNow _) => _pluralize(years, 'lata', 'lat');
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
