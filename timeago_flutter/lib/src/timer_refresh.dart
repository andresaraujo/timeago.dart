import 'timer_refresh_widget.dart';
import 'package:flutter/widgets.dart';

class TimerRefresh extends TimerRefreshWidget {
  const TimerRefresh({
    Key key,
    this.child,
    this.builder,
    Duration refreshRate,
  })  : assert(builder != null && child != null),
        super(key: key, refreshRate: refreshRate);

  final Widget child;
  final TransitionBuilder builder;

  @override
  Widget build(BuildContext context) => builder?.call(context, child) ?? child;
}
