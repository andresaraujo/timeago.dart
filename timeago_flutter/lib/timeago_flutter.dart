library timeago_flutter;

import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

typedef Widget TimeagoBuilder(BuildContext context, String formatted);

class Timeago extends StatelessWidget {
  final TimeagoBuilder builder;
  final DateTime date;
  final DateTime clock;
  final String locale;
  final bool allowFromNow;

  const Timeago({
    Key key,
    @required this.builder,
    @required this.date,
    this.locale,
    this.allowFromNow,
    this.clock,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formatted = timeago.format(date,
        locale: locale, clock: clock, allowFromNow: allowFromNow);
    return builder(context, formatted);
  }
}
