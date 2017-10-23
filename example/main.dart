// ignore: implementation_imports
import 'dart:async' show Timer;
import 'dart:html';
import 'package:timeago/browser_timeago.dart';

final mainContainer = querySelector("#main");
final listContainer = querySelector("#list");

main() async {
  final loadedTime = new DateTime.now();

  // Preload spanish messages
  defaultTimeAgo.initializeLocale('es');

  final updateMainContainer = () {
    final now = new DateTime.now();
    final difference = now.difference(loadedTime);
    mainContainer.text = timeAgo(now.subtract(difference));
  };

  querySelectorAll(".locale-link").onClick.listen((event) async {
    final el = event.target as AnchorElement;

    // Initialize selected locale
    defaultTimeAgo.initializeLocale(el.text);

    // Set locale for the default time ago object
    defaultTimeAgo.locale = el.text;

    // Recreate list items
    listContainer.innerHtml = "";
    createListItems();
  });

  updateMainContainer();
  createListItems();

  new Timer.periodic(new Duration(seconds: 1), (_) => updateMainContainer());
}

addItem(String text) {
  listContainer.append(new LIElement()..text = text);
}

createListItems() {
  final currentTime = new DateTime.now();
  addItem(
      timeAgo(currentTime.subtract(new Duration(microseconds: 1 * 44 * 1000))));
  addItem(timeAgo(currentTime.subtract(new Duration(minutes: 1))));
  addItem(timeAgo(currentTime.subtract(new Duration(minutes: 5))));
  addItem(timeAgo(currentTime.subtract(new Duration(minutes: 50))));
  addItem(timeAgo(currentTime.subtract(new Duration(hours: 5))));
  addItem(timeAgo(currentTime.subtract(new Duration(days: 1))));
  addItem(timeAgo(currentTime.subtract(new Duration(days: 5))));
  addItem(timeAgo(currentTime.subtract(new Duration(days: 30))));
  addItem(timeAgo(currentTime.subtract(new Duration(days: 30 * 5))));
  addItem(timeAgo(currentTime.subtract(new Duration(days: 365))));
  addItem(timeAgo(currentTime.subtract(new Duration(days: 365 * 5))));

  addItem("-");

  addItem(
      timeUntil(currentTime.add(new Duration(microseconds: 1 * 44 * 1000))));
  addItem(timeUntil(currentTime.add(new Duration(minutes: 1))));
  addItem(timeUntil(currentTime.add(new Duration(minutes: 5))));
  addItem(timeUntil(currentTime.add(new Duration(minutes: 50))));
  addItem(timeUntil(currentTime.add(new Duration(hours: 5))));
  addItem(timeUntil(currentTime.add(new Duration(days: 1))));
  addItem(timeUntil(currentTime.add(new Duration(days: 5))));
  addItem(timeUntil(currentTime.add(new Duration(days: 30))));
  addItem(timeUntil(currentTime.add(new Duration(days: 30 * 5))));
  addItem(timeUntil(currentTime.add(new Duration(days: 365))));
  addItem(timeUntil(currentTime.add(new Duration(days: 365 * 5))));
}

timeUntil(DateTime date) {
  return timeAgo(date, until: true);
}
