import "package:intl/intl.dart";
import 'package:intl/date_symbol_data_local.dart';

DateTime unixToUST(int unix) {
  return DateTime.fromMillisecondsSinceEpoch(unix * 1000);
}

String timeToString(DateTime time) {
  initializeDateFormatting("ja_JP");
  var formatt = DateFormat("M/d HH:mm");
  return formatt.format(time);
}

bool isNight(DateTime time) {
  var hour = time.hour;
  if ((hour >= 19 && hour <= 23) || (hour >= 0 && hour <= 5)) {
    return true;
  } else {
    return false;
  }
}
