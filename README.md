# timeago

A library useful for creating fuzzy timestamps. (e.g. "5 minutes ago")

[![Pub](https://img.shields.io/pub/v/timeago.svg?style=flat-square)](https://pub.dartlang.org/packages/timeago)

## Usage

```dart
import 'package:timeago/timeago.dart';

main() async {
    TimeAgo ta = new TimeAgo();
    final current = new DateTime.now();
    
    print(ta.timeAgo(current.subtract(new Duration(minutes: 15)))); // 15 minutes ago
    print(ta.timeAgo(
      current.add(new Duration(minutes: 15))),
      until: true
    ); // 15 minutes from now
    
    //change locale to spanish
    await TimeAgo.initializeLocale("es");
    
    print(time.timeAgo(current - (15 * 60 * 1000))); // hace 15 minutos
    print(time.timeUntil(current - (15 * 60 * 1000))); // dentro de 15 minutos
    
    print(ta.timeAgo(current.subtract(new Duration(minutes: 15)))); // hace 15 minutos
    print(ta.timeAgo(
      current.add(new Duration(minutes: 15))),
      until: true
    ); // dentro de 15 minutos
}
```

### Live Demo
[Here](http://andresaraujo.github.io/timeago.dart/)

### To do
- Add more locales

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/andresaraujo/timeago.dart/issues
