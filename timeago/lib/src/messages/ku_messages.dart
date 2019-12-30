import 'package:timeago/src/messages/lookupmessages.dart';

class KuMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => '';
  String suffixFromNow() => 'لە ئێستاوە';
  String lessThanOneMinute(int seconds) => 'چەند چرکەیەک لەمەوپێش';
  String aboutAMinute(int minutes) => 'خولەکێک لەمەوپێش';
  String minutes(int minutes) {
    if (minutes == 1) {
      return 'خولەکێک لەمەوپێش';
    }

    return '$minutes خولەک لەمەوپێش';
  }
  String aboutAnHour(int minutes) => 'کاژێرێک لەمەوپێش';
  String hours(int hours) {
    if (hours == 1) {
      return 'کاژێرێک لەمەوپێش';
    }

    return '$hours کاژێر لەمەوپێش';
  }
  String aDay(int hours) => 'ڕۆژێک لەمەوپێش';
  String days(int days) {
    if (days == 1) {
      return 'ڕۆژێک لەمەوپێش';
    }

    return '$days ڕۆژ لەمەوپێش';
  }
  String aboutAMonth(int days) => 'مانگێک لەمەوپێش';
  String months(int months) {
    if (months == 1) {
      return 'مانگێک لەمەوپێش';
    }
    return '$months مانگ لەمەوپێش';
  }
  String aboutAYear(int year) => 'ساڵێک لەمەوپێش';
  String years(int years) {
    if (years == 1) {
      return 'ساڵێک لەمەوپێش';
    }

    return '$years ساڵ لەمەوپێش';
  }
  String wordSeparator() => ' ';
}

class KuShortMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => '';
  String suffixFromNow() => '';
  String lessThanOneMinute(int seconds) => 'ئێستا';
  String aboutAMinute(int minutes) => '1 خولەک';
  String minutes(int minutes) => 'خولەک $minutes';
  String aboutAnHour(int minutes) => 'کاژێر ~1';
  String hours(int hours) => 'کاژێر $hours';
  String aDay(int hours) => '~1 ڕۆژ';
  String days(int days) => 'رۆژ $days';
  String aboutAMonth(int days) => '~1 مانگ';
  String months(int months) => 'مانگ $months';
  String aboutAYear(int year) => '~1 ساڵ';
  String years(int years) => 'ساڵ $years ';
  String wordSeparator() => ' ';
}
