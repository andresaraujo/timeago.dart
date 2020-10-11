import 'package:timeago/src/messages/lookupmessages.dart';

/// Kurdish messages
class KuMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => 'لە ئێستاوە';
  @override
  String lessThanOneMinute(int seconds) => 'چەند چرکەیەک لەمەوپێش';
  @override
  String aboutAMinute(int minutes) => 'خولەکێک لەمەوپێش';
  @override
  String minutes(int minutes) {
    if (minutes == 1) {
      return 'خولەکێک لەمەوپێش';
    }

    return '$minutes خولەک لەمەوپێش';
  }

  @override
  String aboutAnHour(int minutes) => 'کاژێرێک لەمەوپێش';
  @override
  String hours(int hours) {
    if (hours == 1) {
      return 'کاژێرێک لەمەوپێش';
    }

    return '$hours کاژێر لەمەوپێش';
  }

  @override
  String aDay(int hours) => 'ڕۆژێک لەمەوپێش';
  @override
  String days(int days) {
    if (days == 1) {
      return 'ڕۆژێک لەمەوپێش';
    }

    return '$days ڕۆژ لەمەوپێش';
  }

  @override
  String aboutAMonth(int days) => 'مانگێک لەمەوپێش';
  @override
  String months(int months) {
    if (months == 1) {
      return 'مانگێک لەمەوپێش';
    }
    return '$months مانگ لەمەوپێش';
  }

  @override
  String aboutAYear(int year) => 'ساڵێک لەمەوپێش';
  @override
  String years(int years) {
    if (years == 1) {
      return 'ساڵێک لەمەوپێش';
    }

    return '$years ساڵ لەمەوپێش';
  }

  @override
  String wordSeparator() => ' ';
}

/// Kurdish short messages
class KuShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'ئێستا';
  @override
  String aboutAMinute(int minutes) => '1 خولەک';
  @override
  String minutes(int minutes) => 'خولەک $minutes';
  @override
  String aboutAnHour(int minutes) => 'کاژێر ~1';
  @override
  String hours(int hours) => 'کاژێر $hours';
  @override
  String aDay(int hours) => '~1 ڕۆژ';
  @override
  String days(int days) => 'رۆژ $days';
  @override
  String aboutAMonth(int days) => '~1 مانگ';
  @override
  String months(int months) => 'مانگ $months';
  @override
  String aboutAYear(int year) => '~1 ساڵ';
  @override
  String years(int years) => 'ساڵ $years ';
  @override
  String wordSeparator() => ' ';
}
