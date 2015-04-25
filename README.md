# timeago

A library useful for creating fuzzy timestamps. (e.g. "5 minutes ago")

## Usage

```dart
import 'package:timeago/timeago.dart';

main() async {
    TimeAgo time = new TimeAgo();
    int current = new DateTime.now().millisecondsSinceEpoch;
    
    print(time.timeAgo(current - (15 * 60 * 1000))); // 15 minutes ago
    
    //change locale
    await time.changeLocale("es");
    
    print(time.timeAgo(current - (15 * 60 * 1000))); // hace 15 minutos
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme
