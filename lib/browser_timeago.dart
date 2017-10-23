library timeago;

import 'package:timeago/src/base_timeago.dart';
import 'package:timeago/src/i18/messages_all.dart' as i18;

// Localized messages are lazy loaded, ideal for web applications
class TimeAgo extends BaseTimeAgo {
  TimeAgo({String locale}) : super(i18.initializeMessages, locale: locale);
}

final defaultTimeAgo = new TimeAgo();

///
/// Shorthand for `defaultTimeAgo.format`
///
String timeAgo(DateTime date, {String locale, until: false}) =>
    defaultTimeAgo.format(date, locale: locale, until: until);
