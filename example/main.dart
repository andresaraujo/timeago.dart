// ignore: implementation_imports
import 'dart:html' as html;
import 'dart:async' show Timer;
import 'package:timeago/timeago.dart';


main() async {
  // ignore: all
  var mainElement = html.querySelector("#timeAgo") as html.SpanElement;

  await TimeAgo.initializeLocale('es');

  var updateMainElement = () {
    mainElement.text = timeAgo(new DateTime.now());
  };

  new Timer.periodic(new Duration(seconds: 1), (timer) {
    updateMainElement();
  });
  updateMainElement();

  //Other examples
  var otherElm = html.querySelector("#other") as html.UListElement;

  var addToOther = (String str) {
    otherElm.append(new html.LIElement()..text = str);
  };

  addOtherExamples(addToOther);

  html
      .querySelectorAll("a")
      .onClick
      .listen((html.MouseEvent event) async {
    html.Element el = event.target as html.AnchorElement;
    await TimeAgo.initializeLocale(el.text);
    defaultTimeAgo.locale = el.text;
    otherElm.innerHtml = "";
    addOtherExamples(addToOther);
  });
}

addOtherExamples(Function addToOther) {
  var currentTime = new DateTime.now();
  addToOther(
      timeAgo(currentTime.subtract(new Duration(microseconds: 1 * 44 * 1000))));
  addToOther(timeAgo(currentTime.subtract(new Duration(minutes: 1))));
  addToOther(timeAgo(currentTime.subtract(new Duration(minutes: 5))));
  addToOther(timeAgo(currentTime.subtract(new Duration(minutes: 50))));
  addToOther(timeAgo(currentTime.subtract(new Duration(hours: 5))));
  addToOther(timeAgo(currentTime.subtract(new Duration(days: 1))));
  addToOther(timeAgo(currentTime.subtract(new Duration(days: 5))));
  addToOther(timeAgo(currentTime.subtract(new Duration(days: 30))));
  addToOther(timeAgo(currentTime.subtract(new Duration(days: 30 * 5))));
  addToOther(timeAgo(currentTime.subtract(new Duration(days: 365))));
  addToOther(timeAgo(currentTime.subtract(new Duration(days: 365 * 5))));

  addToOther("-");

  addToOther(
      timeUntil(currentTime.add(new Duration(microseconds: 1 * 44 * 1000))));
  addToOther(timeUntil(currentTime.add(new Duration(minutes: 1))));
  addToOther(timeUntil(currentTime.add(new Duration(minutes: 5))));
  addToOther(timeUntil(currentTime.add(new Duration(minutes: 50))));
  addToOther(timeUntil(currentTime.add(new Duration(hours: 5))));
  addToOther(timeUntil(currentTime.add(new Duration(days: 1))));
  addToOther(timeUntil(currentTime.add(new Duration(days: 5))));
  addToOther(timeUntil(currentTime.add(new Duration(days: 30))));
  addToOther(timeUntil(currentTime.add(new Duration(days: 30 * 5))));
  addToOther(timeUntil(currentTime.add(new Duration(days: 365))));
  addToOther(timeUntil(currentTime.add(new Duration(days: 365 * 5))));
}

timeUntil(DateTime date) {
  return timeAgo(date, until: true);
}