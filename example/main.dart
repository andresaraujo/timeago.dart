import 'dart:html' as html;
import 'dart:async' show Timer;
import 'package:timeago/timeago.dart';

int fixedTime = new DateTime.now().millisecondsSinceEpoch;
main() {
  var autoElm = html.querySelector("#timeAgo") as html.SpanElement;

  var fuzzy = new TimeAgo();

  var updateElement = () {
    int currentTime = new DateTime.now().millisecondsSinceEpoch;
    autoElm.text = fuzzy.timeAgo(fixedTime);
  };

  new Timer.periodic(new Duration(seconds: 1), (timer) {
    updateElement();
  });
  updateElement();

  //Other examples
  var otherElm = html.querySelector("#other") as html.UListElement;

  var addToOther = (str) {
    otherElm.append(new html.LIElement()..text = str);
  };

  addOtherExamples(fuzzy, addToOther);

  html.querySelectorAll("a").onClick.listen((event) async {
    var locale = event.target.text;
    await fuzzy.changeLocale(locale);
    otherElm.innerHtml = "";
    addOtherExamples(fuzzy, addToOther);
  });
}

addOtherExamples(TimeAgo fuzzy, Function addToOther) {
  int currentTime = new DateTime.now().millisecondsSinceEpoch;
  addToOther(fuzzy.timeAgo(currentTime - (1 * 44 * 1000)));
  addToOther(fuzzy.timeAgo(currentTime - (1 * 60 * 1000)));
  addToOther(fuzzy.timeAgo(currentTime - (5 * 60 * 1000)));
  addToOther(fuzzy.timeAgo(currentTime - (50 * 60 * 1000)));
  addToOther(fuzzy.timeAgo(currentTime - (5 * 60 * 60 * 1000)));
  addToOther(fuzzy.timeAgo(currentTime - (25 * 60 * 60 * 1000)));
  addToOther(fuzzy.timeAgo(currentTime - (5 * 24 * 60 * 60 * 1000)));
  addToOther(fuzzy.timeAgo(currentTime - (30 * 24 * 60 * 60 * 1000)));
  addToOther(fuzzy.timeAgo(currentTime - (5 * 30 * 24 * 60 * 60 * 1000)));
  addToOther(fuzzy.timeAgo(currentTime - (13 * 30 * 24 * 60 * 60 * 1000)));
  addToOther(fuzzy.timeAgo(currentTime - (3 * 12 * 30 * 24 * 60 * 60 * 1000)));
  addToOther("-");
  addToOther(fuzzy.timeUntil(currentTime - (1 * 44 * 1000)));
  addToOther(fuzzy.timeUntil(currentTime - (1 * 60 * 1000)));
  addToOther(fuzzy.timeUntil(currentTime - (5 * 60 * 1000)));
  addToOther(fuzzy.timeUntil(currentTime - (50 * 60 * 1000)));
  addToOther(fuzzy.timeUntil(currentTime - (5 * 60 * 60 * 1000)));
  addToOther(fuzzy.timeUntil(currentTime - (25 * 60 * 60 * 1000)));
  addToOther(fuzzy.timeUntil(currentTime - (5 * 24 * 60 * 60 * 1000)));
  addToOther(fuzzy.timeUntil(currentTime - (30 * 24 * 60 * 60 * 1000)));
  addToOther(fuzzy.timeUntil(currentTime - (5 * 30 * 24 * 60 * 60 * 1000)));
  addToOther(fuzzy.timeUntil(currentTime - (13 * 30 * 24 * 60 * 60 * 1000)));
  addToOther(fuzzy.timeUntil(currentTime - (3 * 12 * 30 * 24 * 60 * 60 * 1000)));
}
