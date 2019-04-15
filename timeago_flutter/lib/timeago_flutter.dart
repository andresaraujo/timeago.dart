library timeago_flutter;

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
export 'package:timeago/timeago.dart';

typedef Widget TimeagoBuilder(BuildContext context, String value);

///
/// Widget that provides a fuzzy time (eg '15 minues ago') relative to the 
/// provided [date]. Builder function will get executed at a [resfreshRate] (Defaults to 1 minute)
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
class Timeago extends StatefulWidget {
  const Timeago({
    Key key,
    @required this.builder,
    @required this.date,
    this.locale,
    this.allowFromNow,
    this.clock,
    this.refreshRate,
  }) : super(key: key);

  final TimeagoBuilder builder;
  final DateTime date;
  final DateTime clock;
  final String locale;
  final bool allowFromNow;
  final Duration refreshRate;

  @override
  _TimeagoState createState() => _TimeagoState();
}

class _TimeagoState extends State<Timeago> {
  Timer _timer;

  @override
  void initState() {
    final refreshRate = widget.refreshRate ?? Duration(minutes: 1);
    _timer = Timer.periodic(refreshRate, (Timer t) {
      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final formatted = timeago.format(widget.date,
        locale: widget.locale,
        clock: widget.clock,
        allowFromNow: widget.allowFromNow);
    return widget.builder(context, formatted);
  }
}
