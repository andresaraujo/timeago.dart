import 'dart:async';
import 'package:flutter/widgets.dart';

/// A widget that refresh with a `refreshRate`
abstract class TimerRefreshWidget extends StatefulWidget {
  const TimerRefreshWidget({
    Key? key,
    Duration? refreshRate = const Duration(minutes: 1),
  })  : refreshRate = refreshRate ?? const Duration(minutes: 1),
        super(key: key);

  /// [Duration] of the timer to refresh
  final Duration refreshRate;

  @override
  _TimerRefreshWidgetState createState() => _TimerRefreshWidgetState();

  @protected
  Widget build(BuildContext context);
}

class _TimerRefreshWidgetState extends State<TimerRefreshWidget>
    with TimerRefreshStateMixin {
  @override
  Widget build(BuildContext context) => widget.build(context);
}

/// The [TimerRefreshStateMixin] allows to handle the [State] of a
/// [TimerRefreshWidget]
mixin TimerRefreshStateMixin on State<TimerRefreshWidget> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    subscribeToTimer(widget.refreshRate);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  void didUpdateWidget(TimerRefreshWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.refreshRate != widget.refreshRate) {
      subscribeToTimer(widget.refreshRate);
    }
  }

  void subscribeToTimer(Duration refreshRate) {
    _timer?.cancel();
    _timer = Timer.periodic(refreshRate, (Timer t) {
      setState(() {});
    });
  }
}
