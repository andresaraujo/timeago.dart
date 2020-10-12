# timeago

A library useful for creating fuzzy timestamps. (e.g. "5 minutes ago")

[![Pub](https://img.shields.io/pub/v/timeago.svg?style=flat-square)](https://pub.dartlang.org/packages/timeago)

[![Build Status](https://img.shields.io/github/workflow/status/andresaraujo/timeago.dart/Build?color=orange&label=actions&logo=github&logoColor=orange&style=for-the-badge)](https://github.com/andresaraujo/timeago.dart/actions)

[![support](https://img.shields.io/badge/platform-web%7Cflutter%7Cdart%20vm-ff69b4.svg?style=flat-square)](https://github.com/andresaraujo/timeago.dart)

## About v2

- v2 of this library does not depend on package `intl` anymore, It didn't make sense for the small amount
  of text and now we can use the same code for browser, Flutter and server.

- API is now a lot simpler, no need to create instance just use the `format` method.

- Allows to add and override locales messages with `setLocaleMessages`

- All v1 locale messages are available to use, currently library only loads by default `en`, `en_short`, `es` and `es_short`.
  To add the remaining just call `setLocaleMessages`, see example.

## Usage

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

### Adding new locales

```dart
main() {
    final fifteenAgo = DateTime.now().subtract(Duration(minutes: 15));

    // Add a new locale messages
    timeago.setLocaleMessages('fr', timeago.FrMessages());

    // Override a locale message
    timeago.setLocaleMessages('en', CustomMessages());

    print(timeago.format(fifteenAgo)); // 15 min ago
    print(timeago.format(fifteenAgo, locale: 'fr')); // environ 15 minutes
}
```

### Live Demo

[Here](http://andresaraujo.github.io/timeago.dart/)

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/andresaraujo/timeago.dart/issues
