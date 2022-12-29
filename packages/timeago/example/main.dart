import 'dart:async' show Timer;
import 'dart:html';
import 'package:timeago/timeago.dart' as timeago;

final mainContainer = querySelector("#main");
final listContainer = querySelector("#list");

var locale = 'en';

main() async {
  timeago.setLocaleMessages('ar', timeago.ArMessages());
  timeago.setLocaleMessages('ar_short', timeago.ArShortMessages());
  timeago.setLocaleMessages('az', timeago.AzMessages());
  timeago.setLocaleMessages('az_short', timeago.AzShortMessages());
  timeago.setLocaleMessages('ca', timeago.CaMessages());
  timeago.setLocaleMessages('ca_short', timeago.CaShortMessages());
  timeago.setLocaleMessages('cs', timeago.CsMessages());
  timeago.setLocaleMessages('cs_short', timeago.CsShortMessages());
  timeago.setLocaleMessages('da', timeago.DaMessages());
  timeago.setLocaleMessages('da_short', timeago.DaShortMessages());
  timeago.setLocaleMessages('de', timeago.DeMessages());
  timeago.setLocaleMessages('de_short', timeago.DeShortMessages());
  timeago.setLocaleMessages('dv', timeago.DvMessages());
  timeago.setLocaleMessages('dv_short', timeago.DvShortMessages());
  timeago.setLocaleMessages('en', timeago.EnMessages());
  timeago.setLocaleMessages('en_short', timeago.EnShortMessages());
  timeago.setLocaleMessages('es', timeago.EsMessages());
  timeago.setLocaleMessages('es_short', timeago.EsShortMessages());
  timeago.setLocaleMessages('et', timeago.EtMessages());
  timeago.setLocaleMessages('et_short', timeago.EtShortMessages());
  timeago.setLocaleMessages('fa', timeago.FaMessages());
  timeago.setLocaleMessages('fi', timeago.FiMessages());
  timeago.setLocaleMessages('fi_short', timeago.FiShortMessages());
  timeago.setLocaleMessages('fr', timeago.FrMessages());
  timeago.setLocaleMessages('fr_short', timeago.FrShortMessages());
  timeago.setLocaleMessages('gr', timeago.GrMessages());
  timeago.setLocaleMessages('gr_short', timeago.GrShortMessages());
  timeago.setLocaleMessages('he', timeago.HeMessages());
  timeago.setLocaleMessages('he', timeago.HeMessages());
  timeago.setLocaleMessages('he_short', timeago.HeShortMessages());
  timeago.setLocaleMessages('hi', timeago.HiMessages());
  timeago.setLocaleMessages('hi_short', timeago.HiShortMessages());
  timeago.setLocaleMessages('hu', timeago.HuMessages());
  timeago.setLocaleMessages('hu_short', timeago.HuShortMessages());
  timeago.setLocaleMessages('id', timeago.IdMessages());
  timeago.setLocaleMessages('it', timeago.ItMessages());
  timeago.setLocaleMessages('it_short', timeago.ItShortMessages());
  timeago.setLocaleMessages('ja', timeago.JaMessages());
  timeago.setLocaleMessages('km', timeago.KmMessages());
  timeago.setLocaleMessages('km_short', timeago.KmShortMessages());
  timeago.setLocaleMessages('ko', timeago.KoMessages());
  timeago.setLocaleMessages('ku', timeago.KuMessages());
  timeago.setLocaleMessages('ku_short', timeago.KuShortMessages());
  timeago.setLocaleMessages('mn', timeago.MnMessages());
  timeago.setLocaleMessages('mn_short', timeago.MnShortMessages());
  timeago.setLocaleMessages('ms_MY', timeago.MsMyMessages());
  timeago.setLocaleMessages('ms_MY_short', timeago.MsMyShortMessages());
  timeago.setLocaleMessages('nb_NO', timeago.NbNoMessages());
  timeago.setLocaleMessages('nb_NO_short', timeago.NbNoShortMessages());
  timeago.setLocaleMessages('nl', timeago.NlMessages());
  timeago.setLocaleMessages('nl_short', timeago.NlShortMessages());
  timeago.setLocaleMessages('nn_NO', timeago.NnNoMessages());
  timeago.setLocaleMessages('nn_NO_short', timeago.NnNoShortMessages());
  timeago.setLocaleMessages('pl', timeago.PlMessages());
  timeago.setLocaleMessages('pt_BR', timeago.PtBrMessages());
  timeago.setLocaleMessages('pt_BR_short', timeago.PtBrShortMessages());
  timeago.setLocaleMessages('ro', timeago.RoMessages());
  timeago.setLocaleMessages('ro_short', timeago.RoShortMessages());
  timeago.setLocaleMessages('ru', timeago.RuMessages());
  timeago.setLocaleMessages('ru_short', timeago.RuShortMessages());
  timeago.setLocaleMessages('rw', timeago.RwMessages());
  timeago.setLocaleMessages('rw_short', timeago.RwShortMessages());
  timeago.setLocaleMessages('sv', timeago.SvMessages());
  timeago.setLocaleMessages('sv_short', timeago.SvShortMessages());
  timeago.setLocaleMessages('ta', timeago.TaMessages());
  timeago.setLocaleMessages('th', timeago.ThMessages());
  timeago.setLocaleMessages('th_short', timeago.ThShortMessages());
  timeago.setLocaleMessages('tk', timeago.TkMessages());
  timeago.setLocaleMessages('tr', timeago.TrMessages());
  timeago.setLocaleMessages('uk', timeago.UkMessages());
  timeago.setLocaleMessages('uk_short', timeago.UkShortMessages());
  timeago.setLocaleMessages('ur', timeago.UrMessages());
  timeago.setLocaleMessages('vi', timeago.ViMessages());
  timeago.setLocaleMessages('vi_short', timeago.ViShortMessages());
  timeago.setLocaleMessages('zh_CN', timeago.ZhCnMessages());
  timeago.setLocaleMessages('zh', timeago.ZhMessages());

  final loadedTime = new DateTime.now();

  final updateMainContainer = () {
    final now = new DateTime.now();
    final difference = now.difference(loadedTime);
    mainContainer?.text =
        timeago.format(now.subtract(difference), locale: locale);
  };

  querySelectorAll(".locale-link").onClick.listen((event) async {
    final el = event.target as AnchorElement;

    locale = el.text ?? 'en';

    // Recreate list items
    listContainer?.innerHtml = "";
    createListItems();
  });

  updateMainContainer();
  createListItems();

  new Timer.periodic(new Duration(seconds: 1), (_) => updateMainContainer());
}

addItem(String text) {
  listContainer?.append(new LIElement()..text = text);
}

createListItems() {
  final currentTime = new DateTime.now();
  addItem(timeago.format(
      currentTime.subtract(new Duration(microseconds: 1 * 44 * 1000)),
      locale: locale));
  addItem(timeago.format(currentTime.subtract(new Duration(minutes: 1)),
      locale: locale));
  addItem(timeago.format(currentTime.subtract(new Duration(minutes: 5)),
      locale: locale));
  addItem(timeago.format(currentTime.subtract(new Duration(minutes: 50)),
      locale: locale));
  addItem(timeago.format(currentTime.subtract(new Duration(hours: 5)),
      locale: locale));
  addItem(timeago.format(currentTime.subtract(new Duration(days: 1)),
      locale: locale));
  addItem(timeago.format(currentTime.subtract(new Duration(days: 5)),
      locale: locale));
  addItem(timeago.format(currentTime.subtract(new Duration(days: 30)),
      locale: locale));
  addItem(timeago.format(currentTime.subtract(new Duration(days: 30 * 5)),
      locale: locale));
  addItem(timeago.format(currentTime.subtract(new Duration(days: 365)),
      locale: locale));
  addItem(timeago.format(currentTime.subtract(new Duration(days: 365 * 5)),
      locale: locale));

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

String timeUntil(DateTime date) {
  return timeago.format(date, locale: locale, allowFromNow: true);
}
