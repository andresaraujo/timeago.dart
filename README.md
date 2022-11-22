# timeago

`timeago` is a dart library that converts a date into a humanized text. Instead of showing a date  `2020-12-12 18:30`  with `timeago` you can display something like `"now", "an hour ago", "~1y", etc`

| timeago         | [![pub package](https://img.shields.io/pub/v/timeago.svg?label=timeago&color=blue)](https://pub.dartlang.org/packages/timeago)                         | core library    |
|-----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------|
| timeago_flutter | [![pub package](https://img.shields.io/pub/v/timeago_flutter.svg?label=timeago_flutter&color=blue)](https://pub.dartlang.org/packages/timeago_flutter) | flutter widgets |

---


The easiest way to use this library via top-level function `format(date)`:

```dart
import 'package:timeago/timeago.dart' as timeago;

main() {
    final fifteenAgo = DateTime.now().subtract(Duration(minutes: 15));

    print(timeago.format(fifteenAgo)); // 15 minutes ago
    print(timeago.format(fifteenAgo, locale: 'en_short')); // 15m
    print(timeago.format(fifteenAgo, locale: 'es')); // hace 15 minutos
}
```

##### IMPORTANT

timeago library **ONLY** includes `en` and `es` messages loaded by default.

To add more of the supported languages use `timeago.setLocaleMessages(..)`. See [locale messages](packages/timeago/lib/src/messages).

##### Standard for language code

This library uses ISO 639-1 language code to identify the language. For more information see [ISO 639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes).

### Adding locales

```dart
timeago.setLocaleMessages('fr', timeago.FrMessages()); // Add french messages

print(timeago.format(fifteenAgo, locale: 'es')); // environ 15 minutes
```

### Overriding locales or adding custom messages

```dart
// Override "en" locale messages with custom messages that are more precise and short
timeago.setLocaleMessages('en', MyCustomMessages());


// my_custom_messages.dart
class MyCustomMessages implements LookupMessages {
  @override String prefixAgo() => '';
  @override String prefixFromNow() => '';
  @override String suffixAgo() => '';
  @override String suffixFromNow() => '';
  @override String lessThanOneMinute(int seconds) => 'now';
  @override String aboutAMinute(int minutes) => '${minutes}m';
  @override String minutes(int minutes) => '${minutes}m';
  @override String aboutAnHour(int minutes) => '${minutes}m';
  @override String hours(int hours) => '${hours}h';
  @override String aDay(int hours) => '${hours}h';
  @override String days(int days) => '${days}d';
  @override String aboutAMonth(int days) => '${days}d';
  @override String months(int months) => '${months}mo';
  @override String aboutAYear(int year) => '${year}y';
  @override String years(int years) => '${years}y';
  @override String wordSeparator() => ' ';
}

```

## Scope

While there are many request for adding more complex functionality I want keep this library as simple as possible to allow minimal maintenance.

The focus of this library should be

1. Provide a single `format` function that transforms a `date` to a humanized value
2. Give the abstractions for users to add their own languages or overriding them as they please
3. Provide languages contributed by the community so users can add them _as they need_ we should not add all languages by default.
4. Library should not depend on any dependency

# timeago_flutter widgets

- Timeago
- TimerRefresh
- TimerRefreshWidget

# Local development

1. Install Melos (https://pub.dev/packages/melos):

`dart pub global activate melos`

2. Bootstrap dependencies:

`melos bootstrap`

3. Open desired package in VSCode or Webstorm

# Live Demo

[Here](https://andresaraujo.github.io/timeago.dart/)