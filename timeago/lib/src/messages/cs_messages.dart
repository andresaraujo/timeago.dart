import 'package:timeago/src/ago_or_from_now.dart';
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
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'chvílí';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'minutou';
  @override
  String minutes(int minutes, AgoOrFromNow _) =>
      _pluralize(minutes, 'minutou', 'minutami', 'minutami');
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'hodinou';
  @override
  String hours(int hours, AgoOrFromNow _) =>
      _pluralize(hours, 'hodinou', 'hodinami', 'hodinami');
  @override
  String aDay(int hours, AgoOrFromNow _) => 'dnem';
  @override
  String days(int days, AgoOrFromNow _) => _pluralize(days, 'dnem', 'dny', 'dny');
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'měsícem';
  @override
  String months(int months, AgoOrFromNow _) =>
      _pluralize(months, 'měsícem', 'měsíci', 'měsíci');
  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'rokem';
  @override
  String years(int years, AgoOrFromNow _) => _pluralize(years, 'rokem', 'roky', 'roky');
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
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'teď';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '1 min';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes min';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~1 hod';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours hod';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~1 den';
  @override
  String days(int days, AgoOrFromNow _) => _pluralize(days, 'den', 'dny', 'dní');
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~1 měsíc';
  @override
  String months(int months, AgoOrFromNow _) => _pluralize(months, 'měsíc', 'měsíce', 'měsíců');
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1 rok';
  @override
  String years(int years, AgoOrFromNow _) => _pluralize(years, 'rok', 'roky', 'roků');
  @override
  String wordSeparator() => ' ';
}

String _pluralize(int n, String form1, String form2, String form3) {
  // Rules as per https://www.gnu.org/software/gettext/manual/html_node/Plural-forms.html
  if (n == 1) return '$n $form1';
  if (n >= 2 && n <= 4) return '$n $form2';
  return '$n $form3';
}
