import 'dart:async';
import 'package:flutter/widgets.dart';

abstract class TimerRefreshWidget extends StatefulWidget {
  const TimerRefreshWidget({
    Key key,
    Duration refreshRate = const Duration(minutes: 1),
  })  : refreshRate = refreshRate ?? const Duration(minutes: 1),
        super(key: key);

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

mixin TimerRefreshStateMixin on State<TimerRefreshWidget> {
  Timer _timer;

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
