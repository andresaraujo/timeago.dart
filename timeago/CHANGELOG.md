# Changelog

## 3.0.2
- Update  `sv` short messages @Kal-Elx

## 3.0.1
- Add `uk` locale @alexnikitchuk

## 3.0.0
- Update GH action to use dev sdk
- Update english short messages to be consistent with other libraries
- Remove null asserts and upgrade to null safety

## 2.0.30

- Fixes in `ko` locale @zirho
- Fixes typos in docs @mchudy
- Add in `ru` short messages and updates @Goolpe
- Fixes in `pl` messages @Dorian Oszczęda
- Fixes in `vi` locale @duynp117
- Adds Mongolian (`mn`) messages @Bat-Orshikh

## 2.0.29

- Adding Hebrew support @iscriptology 
- Fix typo in Vietnamese @bachvtuan 

## 2.0.28

- Adding Hindi support. @bipin001, @kranfix, @Google
- Adding Malay support. @jonsaw
- Adding documentation comments. @kranfix

## 2.0.27

- Update tr_messages.dart
- Add Czech language
- Update ko_messages.dart
- Greek Language Support
  Thanks to: @necatisozer, @BrnoPCmaniak, @HeesungB, @esentis

## 2.0.26

- Added Catalan support @comlaterra

## 2.0.25

- Added dhivehi support @Dharisd

## 2.0.24

- Improvements in package health with pana.
- Fixes to Kurdish messages.

## 2.0.22

- Improvements to Polish messages @Patryk27
- Adds French short messages @woprandi

## 2.0.21

- Improvements to Zh messages @kj415j45
- Adds Sv messages @simoneddeland

## 2.0.20

- Improvements to Es messages @anonymousJacker

## 2.0.19

- Added Romanian support @stefancandrea
- Added Italian short version @quantosapplications
- Improvements to Ja messages @kesoji
- Improvements to brazilian portuguese @elder004

## 2.0.18

- Improvements to Ku messages thanks to @Xoshbin

## 2.0.17

- Improvements to Russian thanks to @Goolpe
- Add Khmer language thanks to @SuuSoJeat
- Add Nynorsk language thanks to @arnemolland

## 2.0.16

- Add Vietnamese locale thanks to @luantranminh
- Fix nl message thanks to @soowa

## 2.0.15

- Add Tamil locale thanks to @Purus
- Fix Arabic wording thanks to @salehahmedZ
- Fix Portuguese prefix and suffix thanks to @DoodlesEpic

## 2.0.14

- Add Korean locale thanks to @jaceshim

## 2.0.13

- Fixes in japanese locale thanks to @mitsuoka

## 2.0.12

- Add Arabic locale thanks to @ammaratef45
- Add Kurdish locale thanks to @Xoshbin

## 2.0.11

- Add Thai locale thanks to @thawatchai
- Add Norwegian Bokmål locale thanks to @danibjor
- Update example fix main timeago text to update with the selected locale

## 2.0.10

- Add short German locale thanks to @sdolski
- Export lookupmessages.dart to prevent analyzer warnings

## 2.0.9

- Add Polish locale thanks to @bartektartanus

## 2.0.8

- Add Turkish thanks to @ferdigokdemir
- Add Indonesian thanks to @skybur

## 2.0.7

- Add danish thanks to @nikolajskov

## 2.0.6

- Fix zh_cn_messages thanks to @zjinys

## 2.0.5

- Fix plural day in german translation

## 2.0.4

- Fix plural days in pt_BR thanks to @leocavalcante

## 2.0.3

- Adds missing return type (`String`) to `format` function

## 2.0.2

- Adds Nl translation thanks to @Elvander

## 2.0.1

- Adds missing Fa, It and Ru Locales from merge conflict

## 2.0.0

BREAKING CHANGES:

- v2 of this library does not depend on package `intl` anymore, It didn't make sense for the small amount
  of text and now we can use the same code for browser, Flutter and server.

- API is now a lot simpler, no need to create instance just use the `format` method.

- Allows to add and override locales messages with `setLocaleMessages`

- All v1 locale messages are available to use, currently library only loads by default `en`, `en_short`, `es` and `es_short`.
  To add the remaining just call `setLocaleMessages`, see example.

- See test and example folder file for examples

## 1.3.0

- Dart 2.0 support

## 1.2.6

- Fixes to German translation

## 1.2.6

- Adds Russian translation thanks to @asstet

## 1.2.5

- Adds Italian translation thanks to @nicofossa

## 1.2.4

- Adds Farsi translation thanks to @siavash-mohseni

## 1.2.3

- Fixes Portuguese not working in non deferred import

## 1.2.2

- Adds Portuguese translation thanks to @jeanpimentel

## 1.2.1

- Adds German translation thanks to @btastic

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
