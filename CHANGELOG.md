# Changelog

## 1.2.0
- Split import declaration into browser(lazy load) and server.

For browser(lazy load) use: `import 'package:timeago/browser_timeago.dart';`
For Flutter/server use: `import 'package:timeago/browser_timeago.dart';`

Breaking: `TimeAgo.initializeLocale` is no longer a static method


## 1.1.0
- Adds Chinese and Simplified Chinese thanks to @oraclebox

## 1.0.2
- Update intl dependency

## 1.0.0
- API change for better clarity

## 0.1.2
- Increase `intl` dependency to accept <0.15.0

## 0.1.1
- Add fr and ja locales

## 0.1.0
- Update messages to be more concise

## 0.0.1

- Add en, en_short, es, and es_short locales
