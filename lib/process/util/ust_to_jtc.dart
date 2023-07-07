import "package:intl/intl.dart";
import 'package:intl/date_symbol_data_local.dart';

String ustToJST(String ust) {
  initializeDateFormatting("ja_JP");
  DateTime ustTime = DateTime.parse(ust);
  DateTime jstTime = ustTime.add(const Duration(hours: 9));
  var formatt = DateFormat("M月d日, HH:mm", "ja_JP");
  return formatt.format(jstTime);
}
