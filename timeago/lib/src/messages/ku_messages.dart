import 'package:timeago/src/ago_or_from_now.dart';
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
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'چەند چرکەیەک لەمەوپێش';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'خولەکێک لەمەوپێش';
  @override
  String minutes(int minutes, AgoOrFromNow _) {
    if (minutes == 1) {
      return 'خولەکێک لەمەوپێش';
    }

    return '$minutes خولەک لەمەوپێش';
  }

  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'کاژێرێک لەمەوپێش';
  @override
  String hours(int hours, AgoOrFromNow _) {
    if (hours == 1) {
      return 'کاژێرێک لەمەوپێش';
    }

    return '$hours کاژێر لەمەوپێش';
  }

  @override
  String aDay(int hours, AgoOrFromNow _) => 'ڕۆژێک لەمەوپێش';
  @override
  String days(int days, AgoOrFromNow _) {
    if (days == 1) {
      return 'ڕۆژێک لەمەوپێش';
    }

    return '$days ڕۆژ لەمەوپێش';
  }

  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'مانگێک لەمەوپێش';
  @override
  String months(int months, AgoOrFromNow _) {
    if (months == 1) {
      return 'مانگێک لەمەوپێش';
    }
    return '$months مانگ لەمەوپێش';
  }

  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'ساڵێک لەمەوپێش';
  @override
  String years(int years, AgoOrFromNow _) {
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
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'ئێستا';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '1 خولەک';
  @override
  String minutes(int minutes, AgoOrFromNow _) => 'خولەک $minutes';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'کاژێر ~1';
  @override
  String hours(int hours, AgoOrFromNow _) => 'کاژێر $hours';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~1 ڕۆژ';
  @override
  String days(int days, AgoOrFromNow _) => 'رۆژ $days';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~1 مانگ';
  @override
  String months(int months, AgoOrFromNow _) => 'مانگ $months';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1 ساڵ';
  @override
  String years(int years, AgoOrFromNow _) => 'ساڵ $years ';
  @override
  String wordSeparator() => ' ';
}
