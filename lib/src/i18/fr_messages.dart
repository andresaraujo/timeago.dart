library timeago.fr_messages;

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'messages';

  static prefixAgo() => "il y a";
  static prefixFromNow() => "d'ici";
  static suffixAgo() => "";
  static suffixFromNow() => "";

  static lessThanOneMinute() => "moins d'une minute";
  static aboutAMinute() => "environ une minute";
  static minutes(minutes) =>
  "${Intl.plural(minutes, zero: '', one: 'environ ${minutes} minute', other: 'environ ${minutes} minutes')}";
  static aboutAnHour() => "environ une heure";
  static hours(hours) =>
  "${Intl.plural(hours, zero: '', one: 'environ ${hours} heure', other: 'environ ${hours} heures')}";
  static aDay() => "environ un jour";
  static days(days) =>
  "${Intl.plural(days, zero: '', one: 'environ ${days} jour', other: 'environ ${days} jours')}";
  static aboutAMonth() => "environ un mois";
  static months(months) =>
  "${Intl.plural(months, zero: '', one: 'environ ${months} mois', other: 'environ ${months} mois')}";
  static aboutAYear() => "un an";
  static years(years) =>
  "${Intl.plural(years, zero: '', one: '${years} ans', other: '${years} ans')}";

  static wordSeparator() => " ";

  final messages = const {
    "prefixAgo": prefixAgo,
    "prefixFromNow": prefixFromNow,
    "suffixAgo": suffixAgo,
    "suffixFromNow": suffixFromNow,
    "lessThanOneMinute": lessThanOneMinute,
    "aboutAMinute": aboutAMinute,
    "minutes": minutes,
    "aboutAnHour": aboutAnHour,
    "hours": hours,
    "aDay": aDay,
    "days": days,
    "aboutAMonth": aboutAMonth,
    "months": months,
    "aboutAYear": aboutAYear,
    "years": years,
    "wordSeparator": wordSeparator
  };
}