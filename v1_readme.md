# timeago

A library useful for creating fuzzy timestamps. (e.g. "5 minutes ago")

[![Pub](https://img.shields.io/pub/v/timeago.svg?style=flat-square)](https://pub.dartlang.org/packages/timeago)

[![Build Status](https://travis-ci.org/andresaraujo/timeago.dart.svg?branch=master)](https://travis-ci.org/andresaraujo/timeago.dart)

## Usage

The easiest way to use this library via top-level function `timeAgo(date)`:

```dart
main() async {
    final fifteenAgo = new DateTime.now().subtract(new Duration(minutes: 15));

    print(timeAgo(fifteenAgo)); // 15 minutes ago
}
```

If you are using it in multiple places and want a little more control you can create your own instance:


```dart
import 'package:timeago/timeago.dart';

main() async {
    TimeAgo ta = new TimeAgo();
    final fifteenAgo = new DateTime.now().subtract(new Duration(minutes: 15));
    final fifteenFromNow = new DateTime.now().add(new Duration(minutes: 15));
    
    print(ta.format(fifteenAgo)); // 15 minutes ago
    print(ta.format(fifteenFromNow, until: true)); // 15 minutes from now
    
    // Change locale
    ta.locale = 'es';
    
    print(ta.format(fifteenAgo)); // hace 15 minutos
    print(ta.format(fifteenFromNow, until: true)); // dentro de 15 minutos
    
}
```

### Using on the Browser(lazy load localizations)

While you can use TimeAgo as previously described in the browser it will load all the current localization messages at once.
To lazyload localizations use `import 'package:timeago/browser_timeago.dart';` instead:

```dart
import 'package:timeago/browser_timeago.dart';

main() async {
    TimeAgo ta = new TimeAgo();
    final fifteenAgo = new DateTime.now().subtract(new Duration(minutes: 15));
    final fifteenFromNow = new DateTime.now().add(new Duration(minutes: 15));
    
    print(ta.format(fifteenAgo)); // 15 minutes ago
    print(ta.format(fifteenFromNow, until: true)); // 15 minutes from now
    
    
    // Lazy Load locale messages, only need to do this once per locale.
    await ta.initializeLocale("es");
    
    // Change locale
    ta.locale = 'es';
    
    print(ta.format(fifteenAgo)); // hace 15 minutos
    print(ta.format(fifteenFromNow, until: true)); // dentro de 15 minutos
    
}
```

### Live Demo
[Here](http://andresaraujo.github.io/timeago.dart/)

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/andresaraujo/timeago.dart/issues
