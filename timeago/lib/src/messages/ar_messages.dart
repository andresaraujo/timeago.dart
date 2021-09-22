import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Arabic Messages
class ArMessages implements LookupMessages {
  @override
  String prefixAgo() => 'منذ';
  @override
  String prefixFromNow() => 'بعد';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';

  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) {
    if (seconds == 1) {
      return 'ثانية واحدة';
    } else if (seconds == 2) {
      return 'ثانيتين';
    } else if (seconds > 2 && seconds < 11) {
      return '$seconds ثواني';
    } else {
      return '$seconds ثانية';
    }
  }
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => 'حوالي دقيقة';
  @override
  String minutes(int minutes, AgoOrFromNow _) {
    if (minutes == 1) {
      return 'دقيقة واحدة';
    } else if (minutes == 2) {
      return 'دقيقتين';
    } else if (minutes > 2 && minutes < 11) {
      return '$minutes دقائق';
    } else {
      return '$minutes دقيقة';
    }
  }

  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => 'حوالي الساعة';
  @override
  String hours(int hours, AgoOrFromNow _) {
    if (hours == 1) {
      return 'ساعة';
    } else if (hours == 2) {
      return 'ساعتين';
    } else if (hours > 2 && hours < 11) {
      return '$hours ساعات';
    } else {
      return '$hours ساعة';
    }
  }

  @override
  String aDay(int hours, AgoOrFromNow _) => 'يوم';
  @override
  String days(int days, AgoOrFromNow _) {
    if (days == 1) {
      return 'يوم واحد';
    } else if (days == 2) {
      return 'يومين';
    } else if (days > 2 && days < 11) {
      return '$days ايام';
    } else {
      return '$days يوم';
    }
  }

  @override
  String aboutAMonth(int days, AgoOrFromNow _) => 'حوالي شهر';
  @override
  String months(int months, AgoOrFromNow _) {
    if (months == 1) {
      return 'منذ شهر';
    } else if (months == 2) {
      return 'منذ شهرين';
    } else if (months > 2 && months < 11) {
      return '$months اشهر';
    } else if (months > 10) {
      return '$months شهر';
    }
    return '$months شهور';
  }

  @override
  String aboutAYear(int year, AgoOrFromNow _) => 'قبل سنة';
  @override
  String years(int years, AgoOrFromNow _) {
    if (years == 1) {
      return 'منذ سنة';
    } else if (years == 2) {
      return 'منذ سنتين';
    } else if (years > 2 && years < 11) {
      return '$years سنوات';
    } else {
      return '$years سنة';
    }
  }

  @override
  String wordSeparator() => ' ';
}

/// Arabic short Messages
class ArShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => '$seconds ثا';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '~1 د';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '$minutes د';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~1 س';
  @override
  String hours(int hours, AgoOrFromNow _) => '$hours س';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~1 ي';
  @override
  String days(int days, AgoOrFromNow _) => '$days ي';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~1 ش';
  @override
  String months(int months, AgoOrFromNow _) => '$months ش';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1 س';
  @override
  String years(int years, AgoOrFromNow _) => '$years س';
  @override
  String wordSeparator() => ' ';
}
