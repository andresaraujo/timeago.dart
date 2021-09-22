import 'package:timeago/src/ago_or_from_now.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Estonian Messages
class EtMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'tagasi';
  @override
  String suffixFromNow() => 'pärast';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow agoOrFromNow) {
    switch(agoOrFromNow) {
      case AgoOrFromNow.ago:
        return 'hetk';
      case AgoOrFromNow.fromNow:
        return 'hetke';
    }
  }
  @override
  String aboutAMinute(int minutes, AgoOrFromNow agoOrFromNow) {
    switch(agoOrFromNow) {
      case AgoOrFromNow.ago:
        return 'üks minut';
      case AgoOrFromNow.fromNow:
        return 'ühe minuti';
    }
  }
  @override
  String minutes(int minutes, AgoOrFromNow agoOrFromNow) {
    switch(agoOrFromNow) {
      case AgoOrFromNow.ago:
        switch(minutes) {
          case 1:
            return '$minutes minut';
          default:
            return '$minutes minutit';
        }
      case AgoOrFromNow.fromNow:
        return '$minutes minuti';
    }
  }
  @override
  String aboutAnHour(int minutes, AgoOrFromNow agoOrFromNow) {
    switch(agoOrFromNow) {
      case AgoOrFromNow.ago:
        return 'tund aega';
      case AgoOrFromNow.fromNow:
        return 'tunni aja';
    }
  }
  @override
  String hours(int hours, AgoOrFromNow agoOrFromNow) {
    switch(agoOrFromNow) {
      case AgoOrFromNow.ago:
        switch(hours) {
          case 1:
            return '$hours tund';
          default:
            return '$hours tundi';
        }
      case AgoOrFromNow.fromNow:
        return '$hours tunni';
    }
  }
  @override
  String aDay(int hours, AgoOrFromNow agoOrFromNow) {
    switch(agoOrFromNow) {
      case AgoOrFromNow.ago:
        return 'üks päev';
      case AgoOrFromNow.fromNow:
        return 'ühe päeva';
    }
  }
  @override
  String days(int days, AgoOrFromNow agoOrFromNow) {
    switch(agoOrFromNow) {
      case AgoOrFromNow.ago:
        switch(days) {
          case 1:
            return '$days päev';
          default:
            return '$days päeva';
        }
      case AgoOrFromNow.fromNow:
        return '$days päeva';
    }
  }
  @override
  String aboutAMonth(int days, AgoOrFromNow agoOrFromNow) {
    switch(agoOrFromNow) {
      case AgoOrFromNow.ago:
        return 'kuu aega';
      case AgoOrFromNow.fromNow:
        return 'kuu aja';
    }
  }
  @override
  String months(int months, AgoOrFromNow agoOrFromNow) {
    switch(agoOrFromNow) {
      case AgoOrFromNow.ago:
        switch(months) {
          case 1:
            return '$months kuu';
          default:
            return '$months kuud';
        }
      case AgoOrFromNow.fromNow:
        return '$months kuu';
    }
  }
  @override
  String aboutAYear(int year, AgoOrFromNow agoOrFromNow) {
    switch(agoOrFromNow) {
      case AgoOrFromNow.ago:
        return 'üks aasta';
      case AgoOrFromNow.fromNow:
        return 'ühe aasta';
    }
  }
  @override
  String years(int years, AgoOrFromNow agoOrFromNow) {
    switch(agoOrFromNow) {
      case AgoOrFromNow.ago:
        switch(years) {
          case 1:
            return '$years aasta';
          default:
            return '$years aastat';
        }
      case AgoOrFromNow.fromNow:
        return '$years aasta';
    }
  }
  @override
  String wordSeparator() => ' ';
}

/// Estonian short Messages
class EtShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds, AgoOrFromNow _) => 'nüüd';
  @override
  String aboutAMinute(int minutes, AgoOrFromNow _) => '1m';
  @override
  String minutes(int minutes, AgoOrFromNow _) => '${minutes}m';
  @override
  String aboutAnHour(int minutes, AgoOrFromNow _) => '~1t';
  @override
  String hours(int hours, AgoOrFromNow _) => '${hours}t';
  @override
  String aDay(int hours, AgoOrFromNow _) => '~1p';
  @override
  String days(int days, AgoOrFromNow _) => '${days}p';
  @override
  String aboutAMonth(int days, AgoOrFromNow _) => '~1k';
  @override
  String months(int months, AgoOrFromNow _) => '${months}k';
  @override
  String aboutAYear(int year, AgoOrFromNow _) => '~1a';
  @override
  String years(int years, AgoOrFromNow _) => '${years}a';
  @override
  String wordSeparator() => ' ';
}
