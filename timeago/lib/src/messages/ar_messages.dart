import 'package:timeago/src/messages/lookupmessages.dart';

class ArMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => '';
  String suffixFromNow() => 'من الآن';
  String lessThanOneMinute(int seconds) => 'قبل ثواني';
  String aboutAMinute(int minutes) => 'قبل دقيقة';
  String minutes(int minutes) {
    if (minutes == 1) {
      return 'منذ دقيقة';
    } else if (minutes == 2) {
      return 'منذ دقيقتين';
    } else if (minutes > 2 && minutes < 11) {
      return ' منذ $minutes دقائق ';
    } else if (minutes > 10) {
      return ' منذ $minutes دقيقة ';
    }

    return ' منذ $minutes دقائق ';
  }
  String aboutAnHour(int minutes) => 'قبل حوالي الساعة';
  String hours(int hours) {
    if (hours == 1) {
      return 'منذ ساعة';
    } else if (hours == 2) {
      return 'منذ ساعتين';
    } else if (hours > 2 && hours < 11) {
      return ' منذ $hours ساعات ';
    } else if (hours > 10) {
      return ' منذ $hours ساعة ';
    }

    return ' منذ $hours ساعات ';
  }
  String aDay(int hours) => 'قبل يوم';
  String days(int days) {
    if (days == 1) {
      return 'منذ يوم';
    } else if (days == 2) {
      return 'منذ يومين';
    } else if (days > 2 && days < 11) {
      return ' منذ $days ايام ';
    } else if (days > 10) {
      return ' منذ $days يوم ';
    }
    return ' منذ $days ايام ';
  }
  String aboutAMonth(int days) => 'قبل حوالي شهر';
  String months(int months) {
    if (months == 1) {
      return 'منذ شهر';
    } else if (months == 2) {
      return 'منذ شهرين';
    } else if (months > 2 && months < 11) {
      return ' منذ $months اشهر ';
    } else if (months > 10) {
      return ' منذ $months شهر ';
    }
    return ' منذ $months شهور ';
  }
  String aboutAYear(int year) => 'قبل سنة';
  String years(int years) {
    if (years == 1) {
      return 'منذ سنة';
    } else if (years == 2) {
      return 'منذ سنتين';
    } else if (years > 2 && years < 11) {
      return ' منذ $years سنوات ';
    } else if (years > 10) {
      return ' منذ $years سنة ';
    }

    return ' منذ $years سنوات ';
  }
  String wordSeparator() => ' ';
}

class ArShortMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => '';
  String suffixFromNow() => '';
  String lessThanOneMinute(int seconds) => 'الأن';
  String aboutAMinute(int minutes) => 'دقيقة واحدة';
  String minutes(int minutes) => '$minutes د';
  String aboutAnHour(int minutes) => '~1 س';
  String hours(int hours) => '$hours س';
  String aDay(int hours) => '~1 ي';
  String days(int days) => '$days ي';
  String aboutAMonth(int days) => '~1 ش';
  String months(int months) => '$months ش';
  String aboutAYear(int year) => '~1 س';
  String years(int years) => '$years س';
  String wordSeparator() => ' ';
}
