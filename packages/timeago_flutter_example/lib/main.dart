import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:timeago_flutter/timeago_flutter.dart';

final localesMap = <String, LookupMessages>{
  'de': DeMessages(),
  'fr': FrMessages(),
  'ja': JaMessages(),
  'id': IdMessages(),
  'pt_BR': PtBrMessages(),
  'pt_BR_short': PtBrShortMessages(),
  'zh': ZhMessages(),
  'zh_CN': ZhCnMessages(),
  'it': ItMessages(),
  'fa': FaMessages(),
  'fi': FiMessages(),
  'fi_short': FiShortMessages(),
  'ru': RuMessages(),
  'tr': TrMessages(),
  'pl': PlMessages(),
  'th': ThMessages(),
  'th_short': ThShortMessages(),
  'nb_NO': NbNoMessages(),
  'nb_NO_short': NbNoShortMessages(),
  'nn_NO': NnNoMessages(),
  'nn_NO_short': NnNoShortMessages(),
  'ku': KuMessages(),
  'ku_short': KuShortMessages(),
  'ar': ArMessages(),
  'ar_short': ArShortMessages(),
  'ko': KoMessages(),
  'en_custom': CustomEnglish(),
  'ro': RoMessages(),
  'ro_short': RoShortMessages(),
};

final localeList = ['en', 'en_short', 'es', 'es_short', ...localesMap.keys];

class CustomEnglish extends EnMessages {
  @override
  String prefixFromNow() => 'in';
  @override
  String suffixFromNow() => '';
  @override
  String aboutAMinute(minutes) => 'a minute';
  @override
  String aboutAnHour(minutes) => 'a hour';
  @override
  String aboutAMonth(days) => 'a month';
}

main() async {
  // Add additional locales
  localesMap.forEach((locale, lookupMessages) {
    setLocaleMessages(locale, lookupMessages);
  });
  return runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'timeago demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _locale = 'en';
  bool _showFutureDates = false;
  late DateTime _baseDate;

  @override
  void initState() {
    _baseDate = DateTime.now();
    super.initState();
  }

  void _chageLocale(String? locale) {
    if (locale == null) {
      return;
    }
    setState(() {
      _locale = locale;
    });
  }

  void _onFutureChange(bool? value) {
    if (value == null) {
      return;
    }
    setState(() {
      _baseDate = DateTime.now();
      _showFutureDates = value;
    });
  }

  List<DropdownMenuItem<String>> _buildLocaleButtons() {
    return [
      for (final locale in localeList)
        DropdownMenuItem(
          value: locale,
          child: Text(locale),
        )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            ListTile(
              title: const Text('Locale'),
              trailing: DropdownButton(
                value: _locale,
                items: _buildLocaleButtons(),
                onChanged: _chageLocale,
              ),
            ),
            CheckboxListTile(
              title: const Text('Future date'),
              value: _showFutureDates,
              onChanged: _onFutureChange,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: GridView.count(
                  shrinkWrap: true,
                  primary: false,
                  crossAxisCount: deviceType == DeviceType.mobile ? 4 : 8,
                  physics: const ScrollPhysics(),
                  children:
                      _buildTimeagolist(_locale, _baseDate, _showFutureDates),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildTimeagolist(
      String locale, DateTime baseDate, bool showFutureDates) {
    DateTime addOrSubstract(
        DateTime date, bool showFutureDates, Duration duration) {
      return showFutureDates ? date.add(duration) : date.subtract(duration);
    }

    final List<DateTime> times = [
      addOrSubstract(baseDate, showFutureDates, const Duration(seconds: 5)),
      addOrSubstract(baseDate, showFutureDates, const Duration(seconds: 45)),
      addOrSubstract(baseDate, showFutureDates, const Duration(seconds: 90)),
      addOrSubstract(baseDate, showFutureDates, const Duration(minutes: 45)),
      addOrSubstract(baseDate, showFutureDates, const Duration(minutes: 90)),
      addOrSubstract(baseDate, showFutureDates, const Duration(hours: 24)),
      addOrSubstract(baseDate, showFutureDates, const Duration(hours: 48)),
      addOrSubstract(baseDate, showFutureDates, const Duration(days: 30)),
      addOrSubstract(baseDate, showFutureDates, const Duration(days: 60)),
      addOrSubstract(baseDate, showFutureDates, const Duration(days: 365)),
      addOrSubstract(baseDate, showFutureDates, const Duration(days: 365 * 2)),
    ];

    final style = Theme.of(context).textTheme.caption;
    return [
      for (final time in times)
        Container(
          margin: const EdgeInsets.all(5),
          color: Colors.blue.shade700,
          alignment: Alignment.center,
          child: Timeago(
            builder: (_, value) => Text(value, style: style),
            date: time,
            locale: locale,
            allowFromNow: true,
          ),
        )
    ];
  }
}
