# timeago

A library useful for creating fuzzy timestamps. (e.g. "5 minutes ago")

[![Pub](https://img.shields.io/pub/v/timeago.svg?style=flat-square)](https://pub.dartlang.org/packages/timeago)

[![Build Status](https://img.shields.io/github/workflow/status/andresaraujo/timeago.dart/Build?color=orange&label=actions&logo=github&logoColor=orange&style=for-the-badge)](https://github.com/andresaraujo/timeago.dart/actions)


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

##### IMPORTANT
You need to add the locales you are going to use in your app otherwise you will get the default english messages.

Currently, it has only **english** preloaded and **spanish**. But the library provides messages for several locales, see [locale messages](lib/source/messages).

### Adding locales

```dart
main() {
    final fifteenAgo = DateTime.now().subtract(Duration(minutes: 15));

    // Add a new locale messages
    timeago.setLocaleMessages('fr', timeago.FrMessages());

    // You can override locale messages, with you own like this
    // where [MyCustomMessages] is a class that extends LookupMessages
    timeago.setLocaleMessages('en', MyCustomMessages());

    print(timeago.format(fifteenAgo)); // 15 min ago
    print(timeago.format(fifteenAgo, locale: 'fr')); // environ 15 minutes
}
```

For a complete example of adding all provided locales see [example](example/main.dart)

### Live Demo

[Here](http://andresaraujo.github.io/timeago.dart/)

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/andresaraujo/timeago.dart/issues
