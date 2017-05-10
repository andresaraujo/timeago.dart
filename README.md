# timeago

A library useful for creating fuzzy timestamps. (e.g. "5 minutes ago")

[![Pub](https://img.shields.io/pub/v/timeago.svg?style=flat-square)](https://pub.dartlang.org/packages/timeago)

## Usage

```dart
import 'package:timeago/timeago.dart';

main() async {
    TimeAgo ta = new TimeAgo();
    final fifteenAgo = new DateTime.now().subtract(new Duration(minutes: 15));
    final fifteenFromNow = new DateTime.now().add(new Duration(minutes: 15));
    
    print(ta.format(fifteenAgo)); // 15 minutes ago
    print(ta.format(fifteenFromNow, until: true)); // 15 minutes from now
    
    // There's also a shorthand for a default time ago object
    print(timeAgo(new DateTime.now())); // just a moment ago
    
    
    // Load locale messages, only need to do this once per locale
    await TimeAgo.initializeLocale("es");
    
    // Change locale
    ta.locale = 'es';
    
    print(ta.format(fifteenAgo)); // hace 15 minutos
    print(ta.format(fifteenFromNow, until: true)); // dentro de 15 minutos
    
}
```

### Live Demo
[Here](http://andresaraujo.github.io/timeago.dart/)

### To do
- Add more locales

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/andresaraujo/timeago.dart/issues
