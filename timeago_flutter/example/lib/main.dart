import 'package:flutter/material.dart';
import 'package:timeago_flutter/timeago_flutter.dart';

const localeList = [
  'en',
  'en_short',
  'es',
  'es_short',
  'de',
  'fr',
  'ja',
  'id',
  'pt_BR',
  'pt_BR_short',
  'zh',
  'zh_CN',
  'it',
  'fa',
  'ru',
  'tr',
  'pl',
  'th',
  'th_short',
  'nb_NO',
  'nb_NO_short',
  'nn_NO',
  'nn_NO_short',
  'ku',
  'ku_short',
  'ar',
  'ar_short',
  'ko',
  'en_custom',
  'ro',
  'ro_short'
];

class CustomEnglish extends EnMessages {
  @override
  String prefixFromNow() => 'in';
  @override
  String suffixFromNow() => '';
  @override
  String aboutAMinute(_) => 'a minute';
  @override
  String aboutAnHour(_) => 'a hour';
  @override
  String aboutAMonth(_) => 'a month';
}

main() async {
  // Add additional locales
  localeList.forEach((locale) {
    switch (locale) {
      case 'de':
        setLocaleMessages(locale, DeMessages());
        break;
      case 'fr':
        setLocaleMessages(locale, FrMessages());
        break;
      case 'ja':
        setLocaleMessages(locale, JaMessages());
        break;
      case 'id':
        setLocaleMessages(locale, IdMessages());
        break;
      case 'pt_BR':
        setLocaleMessages(locale, PtBrMessages());
        break;
      case 'pt_BR_short':
        setLocaleMessages(locale, PtBrShortMessages());
        break;
      case 'zh':
        setLocaleMessages(locale, ZhMessages());
        break;
      case 'zh_CN':
        setLocaleMessages(locale, ZhCnMessages());
        break;
      case 'it':
        setLocaleMessages(locale, ItMessages());
        break;
      case 'fa':
        setLocaleMessages(locale, FaMessages());
        break;
      case 'ru':
        setLocaleMessages(locale, RuMessages());
        break;
      case 'tr':
        setLocaleMessages(locale, TrMessages());
        break;
      case 'pl':
        setLocaleMessages(locale, PlMessages());
        break;
      case 'th':
        setLocaleMessages(locale, ThMessages());
        break;
      case 'th_short':
        setLocaleMessages(locale, ThShortMessages());
        break;
      case 'nb_NO':
        setLocaleMessages(locale, NbNoMessages());
        break;
      case 'nb_NO_short':
        setLocaleMessages(locale, NbNoShortMessages());
        break;
      case 'nn_NO':
        setLocaleMessages(locale, NnNoMessages());
        break;
      case 'nn_NO_short':
        setLocaleMessages(locale, NnNoShortMessages());
        break;
      case 'ku':
        setLocaleMessages(locale, KuMessages());
        break;
      case 'ku_short':
        setLocaleMessages(locale, KuShortMessages());
        break;
      case 'ar':
        setLocaleMessages(locale, ArMessages());
        break;
      case 'ar_short':
        setLocaleMessages(locale, ArShortMessages());
        break;
      case 'ko':
        setLocaleMessages(locale, KoMessages());
        break;
      case 'en_custom':
        setLocaleMessages(locale, CustomEnglish());
        break;
      case 'ro':
        setLocaleMessages(locale, RoMessages());
        break;
      case 'ro_short':
        setLocaleMessages(locale, RoShortMessages());
        break;
    }
  });
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(accentColor: Colors.blue),
        home: MyHomePage(title: 'Flutter Demo Home Page'));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _locale = 'en';
  bool _showFutureDates = false;
  DateTime _baseDate;

  @override
  void initState() {
    _baseDate = DateTime.now();
    super.initState();
  }

  void _chageLocale(String locale) {
    setState(() {
      _locale = locale;
    });
  }

  void _onFutureChange(bool value) {
    setState(() {
      _showFutureDates = value;
    });
  }

  List<DropdownMenuItem<String>> _buildLocaleButtons() {
    return localeList.map((locale) {
      return DropdownMenuItem(
        value: locale,
        child: Text(locale),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Locale'),
            trailing: DropdownButton(
              value: _locale,
              items: _buildLocaleButtons(),
              onChanged: _chageLocale,
            ),
          ),
          CheckboxListTile(
            title: Text('Future date'),
            value: _showFutureDates,
            onChanged: _onFutureChange,
          ),
          GridView.count(
            shrinkWrap: true,
            primary: false,
            crossAxisCount: 2,
            physics: ScrollPhysics(),
            children: _buildTimeagolist(_locale, _baseDate, _showFutureDates),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildTimeagolist(
      String locale, DateTime baseDate, bool showFutureDates) {
    addOrSubstract(DateTime date, bool showFutureDates, Duration duration) {
      return showFutureDates ? date.add(duration) : date.subtract(duration);
    }

    List<DateTime> times = [
      addOrSubstract(baseDate, showFutureDates, Duration(seconds: 5)),
      addOrSubstract(baseDate, showFutureDates, Duration(seconds: 45)),
      addOrSubstract(baseDate, showFutureDates, Duration(seconds: 90)),
      addOrSubstract(baseDate, showFutureDates, Duration(minutes: 45)),
      addOrSubstract(baseDate, showFutureDates, Duration(minutes: 90)),
      addOrSubstract(baseDate, showFutureDates, Duration(hours: 24)),
      addOrSubstract(baseDate, showFutureDates, Duration(hours: 48)),
      addOrSubstract(baseDate, showFutureDates, Duration(days: 30)),
      addOrSubstract(baseDate, showFutureDates, Duration(days: 60)),
      addOrSubstract(baseDate, showFutureDates, Duration(days: 365)),
      addOrSubstract(baseDate, showFutureDates, Duration(days: 365 * 2)),
    ];

    return times.map((time) {
      return Container(
        margin: EdgeInsets.all(5),
        color: Colors.blue.shade700,
        child: Center(
          child: Timeago(
            builder: (_, value) => Text(
              value,
              style: Theme.of(context).textTheme.caption,
            ),
            date: time,
            locale: locale,
            allowFromNow: true,
          ),
        ),
      );
    }).toList();
  }
}
