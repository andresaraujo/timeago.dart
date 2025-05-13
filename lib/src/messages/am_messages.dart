import 'package:timeago/src/messages/lookupmessages.dart';

/// Amharic Messages
class AmMessages implements LookupMessages {
  @override
  String aDay(int hours) => 'ቀን';

  @override
  String aboutAMinute(int minutes) => 'አንድ ደቂቃ';

  @override
  String aboutAMonth(int days) => 'አንድ ወር ገደማ';

  @override
  String aboutAYear(int year) => 'አንድ ዓመት ገደማ';

  @override
  String aboutAnHour(int minutes) => 'ለአንድ ሰዓት ያህል';

  @override
  String days(int days) {
    if (days == 1) {
      return '$days ቀን';
    }
    return '$days ቀናት';
  }

  @override
  String hours(int hours) {
    if (hours == 1) {
      '$hours ሰአት';
    }
    return '$hours ሰአታት';
  }

  @override
  String lessThanOneMinute(int seconds) => 'አንድ አፍታ';

  @override
  String minutes(int minutes) {
    if (minutes == 1) {
      return '$minutes ደቂቃ';
    }
    return '$minutes ደቂቃዎች';
  }

  @override
  String months(int months) {
    if (months == 1) {
      return '$months ወር';
    }
    return '$months ወራት';
  }

  @override
  String prefixAgo() => '';

  @override
  String prefixFromNow() => '';

  @override
  String suffixAgo() => 'በፊት';

  @override
  String suffixFromNow() => 'ከአሁን ጀምሮ';
  @override
  String wordSeparator() => ' ';

  @override
  String years(int years) {
    if (years == 1) {
      return '$years አመት';
    }
    return '$years አመታት';
  }
}

/// Amharic short Messages

class AmShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'አሁን';
  @override
  String aboutAMinute(int minutes) => '1ደ';
  @override
  String minutes(int minutes) => '${minutes}ደ';
  @override
  String aboutAnHour(int minutes) => '~1ሰ';
  @override
  String hours(int hours) => '${hours}ሰ';
  @override
  String aDay(int hours) => '~1ቀ';
  @override
  String days(int days) => '${days}ቀ';
  @override
  String aboutAMonth(int days) => '~1ወር';
  @override
  String months(int months) => '${months}ወር';
  @override
  String aboutAYear(int year) => '~1ዓ';
  @override
  String years(int years) => '${years}ዓ';
  @override
  String wordSeparator() => ' ';
}
