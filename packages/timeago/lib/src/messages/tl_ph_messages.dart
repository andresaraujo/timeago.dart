import 'package:timeago/src/messages/lookupmessages.dart';

List<String> numToWords = [
  '',
  'isa',
  'dalawa',
  'tatlo',
  'apat',
  'lima',
  'anim',
  'pito',
  'walo',
  'siyam',
  'sampu'
];
String vowels = 'aeiou';

// Helper function
String numToWordsFormatter(int number) {
  try {
    var word = numToWords[number];
    var lastLetterOfWord = word[word.length - 1];
    if (vowels.contains(lastLetterOfWord)) {
      return '${word}ng';
    }
    return '${word} na';
  } catch (err) {
    // RangeError
    return '$number';
  }
}

/// Tagalog Messages
class TlPhMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'nakalipas';
  @override
  String suffixFromNow() => 'mula ngayon';
  @override
  String lessThanOneMinute(int seconds) => 'isang saglit';
  @override
  String aboutAMinute(int minutes) => 'isang minuto';
  @override
  String minutes(int minutes) => '${numToWordsFormatter(minutes)} minuto';
  @override
  String aboutAnHour(int minutes) => 'mga isang oras';
  @override
  String hours(int hours) => '${numToWordsFormatter(hours)} oras';
  @override
  String aDay(int hours) => 'isang araw';
  @override
  String days(int days) => '${numToWordsFormatter(days)} araw';
  @override
  String aboutAMonth(int days) => 'mga isang buwan';
  @override
  String months(int months) => '${numToWordsFormatter(months)} buwan';
  @override
  String aboutAYear(int year) => 'mga isang taon';
  @override
  String years(int years) => '${numToWordsFormatter(years)} taon';
  @override
  String wordSeparator() => ' ';
}

/// English short Messages
class TlPhShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'ngayon';
  @override
  String aboutAMinute(int minutes) => '1m';
  @override
  String minutes(int minutes) => '${minutes}m';
  @override
  String aboutAnHour(int minutes) => '~1o';
  @override
  String hours(int hours) => '${hours}o';
  @override
  String aDay(int hours) => '~1a';
  @override
  String days(int days) => '${days}a';
  @override
  String aboutAMonth(int days) => '~1bu';
  @override
  String months(int months) => '${months}bu';
  @override
  String aboutAYear(int year) => '~1t';
  @override
  String years(int years) => '${years}t';
  @override
  String wordSeparator() => ' ';
}
