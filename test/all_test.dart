library timeago.test;

import 'package:test/test.dart';
import 'package:timeago/timeago.dart';

int fixedTime = new DateTime.now().millisecondsSinceEpoch;

main() {
  TimeAgo fuzzy = new TimeAgo();
  group('Ago', () {
    test('less than a minute ago', () {
      String result = fuzzy.timeAgo(fixedTime - (1 * 1 * 1000));
      expect(result, equals('less than a minute ago'));

      result = fuzzy.timeAgo(fixedTime - (1 * 44 * 1000));
      expect(result, equals('less than a minute ago'));
    });

    test('about a minute ago', () {
      String result = fuzzy.timeAgo(fixedTime - (1 * 45 * 1000));
      expect(result, equals('a minute ago'));

      result = fuzzy.timeAgo(fixedTime - (1 * 89 * 1000));
      expect(result, equals('a minute ago'));
    });

    test('n minutes ago', () {
      String result = fuzzy.timeAgo(fixedTime - (1 * 90 * 1000));
      expect(result, equals('2 minutes ago'));

      result = fuzzy.timeAgo(fixedTime - (44 * 60 * 1000));
      expect(result, equals('44 minutes ago'));
    });

    test('about an hour ago', () {
      String result = fuzzy.timeAgo(fixedTime - (45 * 60 * 1000));
      expect(result, equals('an hour ago'));

      result = fuzzy.timeAgo(fixedTime - (89 * 60 * 1000));
      expect(result, equals('an hour ago'));
    });

    test('n hours ago', () {
      String result = fuzzy.timeAgo(fixedTime - (90 * 60 * 1000));
      expect(result, equals('2 hours ago'));

      result = fuzzy.timeAgo(fixedTime - (23 * 60 * 60 * 1000));
      expect(result, equals('23 hours ago'));
    });

    test('a day ago', () {
      String result = fuzzy.timeAgo(fixedTime - (24 * 60 * 60 * 1000));
      expect(result, equals('a day ago'));

      result = fuzzy.timeAgo(fixedTime - (47 * 60 * 60 * 1000));
      expect(result, equals('a day ago'));
    });

    test('n days ago', () {
      String result = fuzzy.timeAgo(fixedTime - (48 * 60 * 60 * 1000));
      expect(result, equals('2 days ago'));

      result = fuzzy.timeAgo(fixedTime - (29 * 24 * 60 * 60 * 1000));
      expect(result, equals('29 days ago'));
    });

    test('about a month ago', () {
      String result = fuzzy.timeAgo(fixedTime - (30 * 24 * 60 * 60 * 1000));
      expect(result, equals('a month ago'));

      result = fuzzy.timeAgo(fixedTime - (59 * 24 * 60 * 60 * 1000));
      expect(result, equals('a month ago'));
    });

    test('n a month ago', () {
      String result = fuzzy.timeAgo(fixedTime - (60 * 24 * 60 * 60 * 1000));
      expect(result, equals('2 months ago'));

      result = fuzzy.timeAgo(fixedTime - (364 * 24 * 60 * 60 * 1000));
      expect(result, equals('12 months ago'));
    });

    test('about a year ago', () {
      String result = fuzzy.timeAgo(fixedTime - (365 * 24 * 60 * 60 * 1000));
      expect(result, equals('a year ago'));

      result = fuzzy.timeAgo(fixedTime - (2 * 364 * 24 * 60 * 60 * 1000));
      expect(result, equals('a year ago'));
    });

    test('n years ago', () {
      String result =
          fuzzy.timeAgo(fixedTime - (2 * 365 * 24 * 60 * 60 * 1000));
      expect(result, equals('2 years ago'));

      result = fuzzy.timeAgo(fixedTime - (5 * 365 * 24 * 60 * 60 * 1000));
      expect(result, equals('5 years ago'));
    });
  });
}
