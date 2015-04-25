library timeago.example;

import 'package:timeago/timeago.dart';

main() async {
  TimeAgo time = new TimeAgo();

  int current = new DateTime.now().millisecondsSinceEpoch;

  const locales = const ["en", "en_short", "es", "es_short"];

  for (var locale in locales) {
    print("\n=== Locale: ${locale}");
    await time.changeLocale(locale);

    print(time.timeAgo(current - (1 * 44 * 1000)));
    print(time.timeAgo(current - (1 * 60 * 1000)));
    print(time.timeAgo(current - (5 * 60 * 1000)));
    print(time.timeAgo(current - (50 * 60 * 1000)));
    print(time.timeAgo(current - (5 * 60 * 60 * 1000)));
    print(time.timeAgo(current - (25 * 60 * 60 * 1000)));
    print(time.timeAgo(current - (5 * 24 * 60 * 60 * 1000)));
    print(time.timeAgo(current - (30 * 24 * 60 * 60 * 1000)));
    print(time.timeAgo(current - (5 * 30 * 24 * 60 * 60 * 1000)));
    print(time.timeAgo(current - (13 * 30 * 24 * 60 * 60 * 1000)));
    print(time.timeAgo(current - (3 * 12 * 30 * 24 * 60 * 60 * 1000)));
    print("");
    print(time.timeUntil(current - (1 * 44 * 1000)));
    print(time.timeUntil(current - (1 * 60 * 1000)));
    print(time.timeUntil(current - (5 * 60 * 1000)));
    print(time.timeUntil(current - (50 * 60 * 1000)));
    print(time.timeUntil(current - (5 * 60 * 60 * 1000)));
    print(time.timeUntil(current - (25 * 60 * 60 * 1000)));
    print(time.timeUntil(current - (5 * 24 * 60 * 60 * 1000)));
    print(time.timeUntil(current - (30 * 24 * 60 * 60 * 1000)));
    print(time.timeUntil(current - (5 * 30 * 24 * 60 * 60 * 1000)));
    print(time.timeUntil(current - (13 * 30 * 24 * 60 * 60 * 1000)));
    print(time.timeUntil(current - (3 * 12 * 30 * 24 * 60 * 60 * 1000)));
  }
}
