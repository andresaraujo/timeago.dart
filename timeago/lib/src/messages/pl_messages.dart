
class PlMessages implements LookupMessages {
  
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => 'temu';
  String suffixFromNow() => 'od tego momentu';
  String lessThanOneMinute(int seconds) => 'chwilę';
  String aboutAMinute(int minutes) => 'około minutę';
  String minutes(int minutes) => _is234(minutes) ? '$minutes minuty' : '$minutes minut';
  String aboutAnHour(int minutes) => 'około godzinę';
  String hours(int hours) => _is234(hours) ? '$hours godziny' : '$hours godzin';
  String aDay(int hours) => 'dzień';
  String days(int days) => '$days dni';
  String aboutAMonth(int days) => 'około miesiąc';
  String months(int months) => _is234(months) ? '$months miesiące' : '$months miesięcy';
  String aboutAYear(int year) => 'około rok';
  String years(int years) => _is234(years) ? '$years lata' : '$years lat';
  String wordSeparator() => ' ';
  
  bool _is234(int v){
    var mod = v % 10;
    return (mod == 2 || mod == 3 || mod == 4) && (v / 10) != 1;
  } 
}
