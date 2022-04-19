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
  String lessThanOneMinute(int seconds) {
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
  String aboutAMinute(int minutes) => 'دقيقة تقريباً';
  

  @override
  String minutes(int minutes) {
    if (minutes == 2) {
      return 'دقيقتين';
    } else if (minutes > 2 && minutes < 11) {
      return '$minutes دقائق';
    } else {
      return '$minutes دقيقة';
    }
  }

  @override
  String aboutAnHour(int minutes) => 'ساعة تقريباً';
  @override
  String hours(int hours) {
    if (hours == 2) {
      return 'ساعتين';
    } else if (hours > 2 && hours < 11) {
      return '$hours ساعات';
    } else {
      return '$hours ساعة';
    }
  }

  @override
  String aDay(int hours) => 'يوم';
  @override
  String days(int days) {
    if (days == 2) {
      return 'يومين';
    } else if (days > 2 && days < 11) {
      return '$days ايام';
    } else {
      return '$days يوم';
    }
  }

  @override
  String aboutAMonth(int days) => 'شهر تقريباً';
  @override
  String months(int months) {
    if (months == 2) {
      return 'شهرين';
    } else if (months > 2 && months < 11) {
      return '$months اشهر';
    } else if (months > 10) {
      return '$months شهر';
    }
    return '$months شهور';
  }

  @override
  String aboutAYear(int year) => 'سنة تقريباً';
  @override
  String years(int years) {
    if (years == 2) {
      return 'سنتين';
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
  String lessThanOneMinute(int seconds) => '$seconds ثا';
  @override
  String aboutAMinute(int minutes) => '~1 د';
  @override
  String minutes(int minutes) => '$minutes د';
  @override
  String aboutAnHour(int minutes) => '~1 س';
  @override
  String hours(int hours) => '$hours س';
  @override
  String aDay(int hours) => '~1 ي';
  @override
  String days(int days) => '$days ي';
  @override
  String aboutAMonth(int days) => '~1 ش';
  @override
  String months(int months) => '$months ش';
  @override
  String aboutAYear(int year) => '~1 س';
  @override
  String years(int years) => '$years س';
  @override
  String wordSeparator() => ' ';
}
