import 'package:timeago/src/messages/lookupmessages.dart';

/// Czech Messages
class CsMessages implements LookupMessages {
  @override
  String prefixAgo() => 'před';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => 'od teď';
  @override
  String lessThanOneMinute(int seconds) => 'chvílí';
  @override
  String aboutAMinute(int minutes) => 'minutou';
  @override
  String minutes(int minutes) =>
      _pluralize(minutes, 'minutou', 'minutami', 'minutami');
  @override
  String aboutAnHour(int minutes) => 'hodinou';
  @override
  String hours(int hours) =>
      _pluralize(hours, 'hodinou', 'hodinami', 'hodinami');
  @override
  String aDay(int hours) => 'dnem';
  @override
  String days(int days) => _pluralize(days, 'dnem', 'dny', 'dny');
  @override
  String aboutAMonth(int days) => 'měsícem';
  @override
  String months(int months) =>
      _pluralize(months, 'měsícem', 'měsíci', 'měsíci');
  @override
  String aboutAYear(int year) => 'rokem';
  @override
  String years(int years) => _pluralize(years, 'rokem', 'roky', 'roky');
  @override
  String wordSeparator() => ' ';
}

/// Czech short Messages
class CsShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'teď';
  @override
  String aboutAMinute(int minutes) => '1 min';
  @override
  String minutes(int minutes) => '$minutes min';
  @override
  String aboutAnHour(int minutes) => '~1 hod';
  @override
  String hours(int hours) => '$hours hod';
  @override
  String aDay(int hours) => '~1 den';
  @override
  String days(int days) => _pluralize(days, 'den', 'dny', 'dní');
  @override
  String aboutAMonth(int days) => '~1 měsíc';
  @override
  String months(int months) => _pluralize(months, 'měsíc', 'měsíce', 'měsíců');
  @override
  String aboutAYear(int year) => '~1 rok';
  @override
  String years(int years) => _pluralize(years, 'rok', 'roky', 'roků');
  @override
  String wordSeparator() => ' ';
}

String _pluralize(int n, String form1, String form2, String form3) {
  // Rules as per https://www.gnu.org/software/gettext/manual/html_node/Plural-forms.html
  if (n == 1) return '$n $form1';
  if (n >= 2 && n <= 4) return '$n $form2';
  return '$n $form3';
}
