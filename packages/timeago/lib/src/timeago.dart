import '../timeago.dart';

abstract class DefaultLocale {
  static const String am = 'am';
  static const String ar = 'ar';
  static const String az = 'az';
  static const String bs = 'bs';
  static const String ca = 'ca';
  static const String cs = 'cs';
  static const String da = 'da';
  static const String de = 'de';
  static const String dv = 'dv';
  static const String en = 'en';
  static const String es = 'es';
  static const String et = 'et';
  static const String fa = 'fa';
  static const String fi = 'fi';
  static const String fr = 'fr';
  static const String gr = 'gr';
  static const String he = 'he';
  static const String hi = 'hi';
  static const String hu = 'hu';
  static const String id = 'id';
  static const String it = 'it';
  static const String ja = 'ja';
  static const String km = 'km';
  static const String ko = 'ko';
  static const String ku = 'ku';
  static const String mn = 'mn';
  static const String msMy = 'ms_my';
  static const String my = 'my';
  static const String nbNo = 'nb_no';
  static const String nl = 'nl';
  static const String nnNo = 'nn_no';
  static const String pl = 'pl';
  static const String ptBr = 'pt_br';
  static const String ro = 'ro';
  static const String ru = 'ru';
  static const String rw = 'rw';
  static const String sv = 'sv';
  static const String ta = 'ta';
  static const String th = 'th';
  static const String tk = 'tk';
  static const String tr = 'tr';
  static const String uk = 'uk';
  static const String ur = 'ur';
  static const String vi = 'vi';
  static const String zhCn = 'zh_cn';
  static const String zh = 'zh';
}

abstract class DefaultLocaleShort {
  static const String am = '${DefaultLocale.am}_short';
  static const String ar = '${DefaultLocale.ar}_short';
  static const String az = '${DefaultLocale.az}_short';
  static const String bs = '${DefaultLocale.bs}_short';
  static const String ca = '${DefaultLocale.ca}_short';
  static const String cs = '${DefaultLocale.cs}_short';
  static const String da = '${DefaultLocale.da}_short';
  static const String de = '${DefaultLocale.de}_short';
  static const String dv = '${DefaultLocale.dv}_short';
  static const String en = '${DefaultLocale.en}_short';
  static const String es = '${DefaultLocale.es}_short';
  static const String et = '${DefaultLocale.et}_short';
  static const String fi = '${DefaultLocale.fi}_short';
  static const String fr = '${DefaultLocale.fr}_short';
  static const String gr = '${DefaultLocale.gr}_short';
  static const String he = '${DefaultLocale.he}_short';
  static const String hi = '${DefaultLocale.hi}_short';
  static const String hu = '${DefaultLocale.hu}_short';
  static const String it = '${DefaultLocale.it}_short';
  static const String km = '${DefaultLocale.km}_short';
  static const String ku = '${DefaultLocale.ku}_short';
  static const String mn = '${DefaultLocale.mn}_short';
  static const String msMy = '${DefaultLocale.msMy}_short';
  static const String my = '${DefaultLocale.my}_short';
  static const String nbNo = '${DefaultLocale.nbNo}_short';
  static const String nl = '${DefaultLocale.nl}_short';
  static const String nnNo = '${DefaultLocale.nnNo}_short';
  static const String ptBr = '${DefaultLocale.ptBr}_short';
  static const String ro = '${DefaultLocale.ro}_short';
  static const String ru = '${DefaultLocale.ru}_short';
  static const String rw = '${DefaultLocale.rw}_short';
  static const String sv = '${DefaultLocale.sv}_short';
  static const String th = '${DefaultLocale.th}_short';
  static const String uk = '${DefaultLocale.uk}_short';
  static const String vi = '${DefaultLocale.vi}_short';
}

String _default = DefaultLocale.en;

Map<String, LookupMessages> _lookupMessagesMap = {
  // Default Locales
  DefaultLocale.am: AmMessages(),
  DefaultLocale.ar: ArMessages(),
  DefaultLocale.az: AzMessages(),
  DefaultLocale.bs: BsMessages(),
  DefaultLocale.ca: CaMessages(),
  DefaultLocale.cs: CsMessages(),
  DefaultLocale.da: DaMessages(),
  DefaultLocale.de: DeMessages(),
  DefaultLocale.dv: DvMessages(),
  DefaultLocale.en: EnMessages(),
  DefaultLocale.es: EsMessages(),
  DefaultLocale.et: EtMessages(),
  DefaultLocale.fa: FaMessages(),
  DefaultLocale.fi: FiMessages(),
  DefaultLocale.fr: FrMessages(),
  DefaultLocale.gr: GrMessages(),
  DefaultLocale.he: HeMessages(),
  DefaultLocale.hi: HiMessages(),
  DefaultLocale.hu: HuMessages(),
  DefaultLocale.id: IdMessages(),
  DefaultLocale.it: ItMessages(),
  DefaultLocale.ja: JaMessages(),
  DefaultLocale.km: KmMessages(),
  DefaultLocale.ko: KoMessages(),
  DefaultLocale.ku: KuMessages(),
  DefaultLocale.mn: MnMessages(),
  DefaultLocale.msMy: MsMyMessages(),
  DefaultLocale.my: MyMessages(),
  DefaultLocale.nbNo: NbNoMessages(),
  DefaultLocale.nl: NlMessages(),
  DefaultLocale.nnNo: NnNoMessages(),
  DefaultLocale.pl: PlMessages(),
  DefaultLocale.ptBr: PtBrMessages(),
  DefaultLocale.ro: RoMessages(),
  DefaultLocale.ru: RuMessages(),
  DefaultLocale.rw: RwMessages(),
  DefaultLocale.sv: SvMessages(),
  DefaultLocale.ta: TaMessages(),
  DefaultLocale.th: ThMessages(),
  DefaultLocale.tk: TkMessages(),
  DefaultLocale.tr: TrMessages(),
  DefaultLocale.uk: UkMessages(),
  DefaultLocale.ur: UrMessages(),
  DefaultLocale.vi: ViMessages(),
  DefaultLocale.zhCn: ZhCnMessages(),
  DefaultLocale.zh: ZhMessages(),

  // Default Locales Short
  DefaultLocaleShort.am: AmShortMessages(),
  DefaultLocaleShort.ar: ArShortMessages(),
  DefaultLocaleShort.az: AzShortMessages(),
  DefaultLocaleShort.bs: BsShortMessages(),
  DefaultLocaleShort.ca: CaShortMessages(),
  DefaultLocaleShort.cs: CsShortMessages(),
  DefaultLocaleShort.da: DaShortMessages(),
  DefaultLocaleShort.de: DeShortMessages(),
  DefaultLocaleShort.dv: DvShortMessages(),
  DefaultLocaleShort.en: EnShortMessages(),
  DefaultLocaleShort.es: EsShortMessages(),
  DefaultLocaleShort.et: EtShortMessages(),
  DefaultLocaleShort.fi: FiShortMessages(),
  DefaultLocaleShort.fr: FrShortMessages(),
  DefaultLocaleShort.gr: GrShortMessages(),
  DefaultLocaleShort.he: HeShortMessages(),
  DefaultLocaleShort.hi: HiShortMessages(),
  DefaultLocaleShort.hu: HuShortMessages(),
  DefaultLocaleShort.it: ItShortMessages(),
  DefaultLocaleShort.km: KmShortMessages(),
  DefaultLocaleShort.ku: KuShortMessages(),
  DefaultLocaleShort.mn: MnShortMessages(),
  DefaultLocaleShort.msMy: MsMyShortMessages(),
  DefaultLocaleShort.my: MyShortMessages(),
  DefaultLocaleShort.nbNo: NbNoShortMessages(),
  DefaultLocaleShort.nl: NlShortMessages(),
  DefaultLocaleShort.nnNo: NnNoShortMessages(),
  DefaultLocaleShort.ptBr: PtBrShortMessages(),
  DefaultLocaleShort.ro: RoShortMessages(),
  DefaultLocaleShort.ru: RuShortMessages(),
  DefaultLocaleShort.rw: RwShortMessages(),
  DefaultLocaleShort.sv: SvShortMessages(),
  DefaultLocaleShort.th: ThShortMessages(),
  DefaultLocaleShort.uk: UkShortMessages(),
  DefaultLocaleShort.vi: ViShortMessages(),
};

/// Sets the default [locale]. By default it is `en`.
///
/// Example
/// ```
/// setLocaleMessages('fr', FrMessages());
/// setDefaultLocale('fr');
/// ```
void setDefaultLocale(String locale) {
  assert(_lookupMessagesMap.containsKey(locale),
      '[locale] must be a registered locale');
  _default = locale;
}

/// Sets a [locale] with the provided [lookupMessages] to be available when
/// using the [format] function.
///
/// Example:
/// ```dart
/// setLocaleMessages('fr', FrMessages());
/// ```
///
/// If you want to define locale message implement [LookupMessages] interface
/// with the desired messages
///
void setLocaleMessages(String locale, LookupMessages lookupMessages) {
  _lookupMessagesMap[locale] = lookupMessages;
}

/// Formats provided [date] to a fuzzy time like 'a moment ago'
///
/// - If [locale] is passed will look for message for that locale, if you want
///   to add or override locales use [setLocaleMessages]. Defaults to 'en'
/// - If [clock] is passed this will be the point of reference for calculating
///   the elapsed time. Defaults to DateTime.now()
/// - If [allowFromNow] is passed, format will use the From prefix, ie. a date
///   5 minutes from now in 'en' locale will display as "5 minutes from now"
String format(DateTime date,
    {String? locale, DateTime? clock, bool allowFromNow = false}) {
  final _locale = locale ?? _default;
  if (_lookupMessagesMap[_locale] == null) {
    print(
        "Locale [$_locale] has not been added, using [$_default] as fallback. To add a locale use [setLocaleMessages]");
  }
  final _allowFromNow = allowFromNow;
  final messages = _lookupMessagesMap[_locale] ?? EnMessages();
  final _clock = clock ?? DateTime.now();
  var elapsed = _clock.millisecondsSinceEpoch - date.millisecondsSinceEpoch;

  String prefix, suffix;

  if (_allowFromNow && elapsed < 0) {
    elapsed = date.isBefore(_clock) ? elapsed : elapsed.abs();
    prefix = messages.prefixFromNow();
    suffix = messages.suffixFromNow();
  } else {
    prefix = messages.prefixAgo();
    suffix = messages.suffixAgo();
  }

  final num seconds = elapsed / 1000;
  final num minutes = seconds / 60;
  final num hours = minutes / 60;
  final num days = hours / 24;
  final num months = days / 30;
  final num years = days / 365;

  String result;
  if (seconds < 45) {
    result = messages.lessThanOneMinute(seconds.round());
  } else if (seconds < 90) {
    result = messages.aboutAMinute(minutes.round());
  } else if (minutes < 45) {
    result = messages.minutes(minutes.round());
  } else if (minutes < 90) {
    result = messages.aboutAnHour(minutes.round());
  } else if (hours < 24) {
    result = messages.hours(hours.round());
  } else if (hours < 48) {
    result = messages.aDay(hours.round());
  } else if (days < 30) {
    result = messages.days(days.round());
  } else if (days < 60) {
    result = messages.aboutAMonth(days.round());
  } else if (days < 365) {
    result = messages.months(months.round());
  } else if (years < 2) {
    result = messages.aboutAYear(months.round());
  } else {
    result = messages.years(years.round());
  }

  return [prefix, result, suffix]
      .where((str) => str.isNotEmpty)
      .join(messages.wordSeparator());
}
