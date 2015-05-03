# timeago

A library useful for creating fuzzy timestamps. (e.g. "5 minutes ago")

[![Pub](https://img.shields.io/pub/v/timeago.svg?style=flat-square)](timeago)

## Usage

```dart
import 'package:timeago/timeago.dart';

main() async {
    TimeAgo time = new TimeAgo();
    int current = new DateTime.now().millisecondsSinceEpoch;
    
    print(time.timeAgo(current - (15 * 60 * 1000))); // 15 minutes ago
    print(time.timeUntil(current - (15 * 60 * 1000))); // 15 minutes from now
    
    //change locale to spanish
    await time.changeLocale("es");
    
    print(time.timeAgo(current - (15 * 60 * 1000))); // hace 15 minutos
    print(time.timeUntil(current - (15 * 60 * 1000))); // dentro de 15 minutos
}
```

### Live Demo
[Here](http://andresaraujo.github.io/timeago.dart/)

### To do
- Add more locales

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/andresaraujo/timeago.dart/issues
