import 'timer_refresh_widget.dart';
import 'package:flutter/widgets.dart';

/// Refresh/rebuild the widget based on a [Duration]
class TimerRefresh extends TimerRefreshWidget {
  const TimerRefresh({
    Key? key,
    this.child,
    required this.builder,
    Duration? refreshRate,
  })  : super(key: key, refreshRate: refreshRate);

  /// Optional `child`
  final Widget? child;

  /// The `builder` has access to the `child` if necessary and rebuilds.
  final TransitionBuilder builder;

  @override
  Widget build(BuildContext context) => builder.call(context, child);
}
