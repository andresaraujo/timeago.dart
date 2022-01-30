# timeago

A library useful for creating fuzzy timestamps. (e.g. "5 minutes ago")

| timeago         | [![pub package](https://img.shields.io/pub/v/timeago.svg?label=timeago&color=blue)](https://pub.dartlang.org/packages/timeago)                         | core library    |
|-----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------|
| timeago_flutter | [![pub package](https://img.shields.io/pub/v/timeago_flutter.svg?label=timeago_flutter&color=blue)](https://pub.dartlang.org/packages/timeago_flutter) | flutter widgets |

---




The easiest way to use this library via top-level function `format(date)`:

```dart
import 'package:timeago/timeago.dart' as timeago;

main() {
    final fifteenAgo = new DateTime.now().subtract(new Duration(minutes: 15));

    print(timeago.format(fifteenAgo)); // 15 minutes ago
    print(timeago.format(fifteenAgo, locale: 'en_short')); // 15m
    print(timeago.format(fifteenAgo, locale: 'es')); // hace 15 minutos
}
```

##### IMPORTANT
timeago library **ONLY** includes `en` and `es` messages loadded by default. 

To add more of the supported languages use `timeago.setLocaleMessages(..)`. See [locale messages](lib/source/messages).

### Adding locales

```dart
// Add french messages
timeago.setLocaleMessages('fr', timeago.FrMessages());

print(timeago.format(fifteenAgo, locale: 'es')); // environ 15 minutes
```

### Overriding locales or adding custom messages

```dart
// Override "en" locale messages with custom messages that are more precise
timeago.setLocaleMessages('en', MyCustomMessages());


// my_custom_messages.dart
class MyCustomMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'now';
  @override
  String aboutAMinute(int minutes) => '${minutes}m';
  @override
  String minutes(int minutes) => '${minutes}m';
  @override
  String aboutAnHour(int minutes) => '${minutes}m';
  @override
  String hours(int hours) => '${hours}h';
  @override
  String aDay(int hours) => '${hours}h';
  @override
  String days(int days) => '${days}d';
  @override
  String aboutAMonth(int days) => '${days}d';
  @override
  String months(int months) => '${months}mo';
  @override
  String aboutAYear(int year) => '${year}y';
  @override
  String years(int years) => '${years}y';
  @override
  String wordSeparator() => ' ';
}
```

---

## timeago_flutter widgets

- Timeago
- TimerRefresh
- TimerRefreshWidget

### Live Demo

[Here](http://andresaraujo.github.io/timeago.dart/)
