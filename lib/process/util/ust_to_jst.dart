import "package:intl/intl.dart";
import 'package:intl/date_symbol_data_local.dart';

String ustToJST(String ust) {
  initializeDateFormatting("ja_JP");
  DateTime ustTime = DateTime.parse(ust);
  DateTime jstTime = ustTime.add(const Duration(hours: 9));
  var formatt = DateFormat("M/d HH:mm");
  return formatt.format(jstTime);
}
