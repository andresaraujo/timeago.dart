library timeago_flutter;

import 'package:flutter/material.dart';
import 'src/timer_refresh_widget.dart';
import 'package:timeago/timeago.dart' as timeago;
export 'package:timeago/timeago.dart';
export 'src/timer_refresh_widget.dart';

typedef TimeagoBuilder = Widget Function(BuildContext context, String value);

///
/// Widget that provides a fuzzy time (eg '15 minues ago') relative to the
/// provided [date]. Builder function will get executed at a [refreshRate] (Defaults to 1 minute)
///
/// Example
///
/// ```dart
/// Timeago(
///   builder: (_, value) => Text(value),
///   date: time,
/// ),
/// ```
///
/// Example with custom refresh rate of 5 minutes
///
/// ```dart
/// Timeago(
///   builder: (_, value) => Text(value),
///   date: time,
///   refreshRate: Duration(minutes: 5)
/// ),
/// ```
///
/// Example to allow future dates. See timeago.dart library for details on future dates
///
/// ```dart
/// Timeago(
///   builder: (_, value) => Text(value),
///   date: time,
///   allowFromNow: true,
/// ),
/// ```
///
/// Example setting the locale. See timeago.dart library for details on locales
///
/// ```dart
/// Timeago(
///   builder: (_, value) => Text(value),
///   date: time,
///   locale: locale,
/// ),
/// ```
///
class Timeago extends TimerRefreshWidget {
  const Timeago({
    Key? key,
    required this.builder,
    required this.date,
    this.locale,
    this.allowFromNow = false,
    this.clock,
    Duration refreshRate = const Duration(minutes: 1),
  }) : super(key: key, refreshRate: refreshRate);

  final TimeagoBuilder builder;
  final DateTime date;
  final DateTime? clock;
  final String? locale;
  final bool allowFromNow;

  @override
  Widget build(BuildContext context) {
    final formatted = timeago.format(date,
        locale: locale, clock: clock, allowFromNow: allowFromNow);
    return builder(context, formatted);
  }
}
