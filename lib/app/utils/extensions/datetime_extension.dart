// ignore_for_file: depend_on_referenced_packages

import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String customToString() {
    DateFormat dateFormatterPtBr = DateFormat('dd/MM/yyyy');
    return dateFormatterPtBr.format(this);
  }

  String customYearToString() {
    DateFormat dateFormatterPtBr = DateFormat('yyyy-MM-dd');
    return dateFormatterPtBr.format(this);
  }

  String customYearDayToString() {
    DateFormat dateFormatterPtBr = DateFormat('yyyy-dd-MM');
    return dateFormatterPtBr.format(this);
  }
  String customYearDayAndHourToString() {
    DateFormat dateFormatterPtBr = DateFormat('yyyy-dd-MM hh:mm:ss');
    return dateFormatterPtBr.format(this);
  }

  String toStringWithHour() {
    DateFormat dateFormatterPtBr = DateFormat('yyyy/MM/dd hh:mm:ss');
    return dateFormatterPtBr.format(this);
  }

  String customToStringWithHour() {
    DateFormat dateFormatterPtBr = DateFormat('dd/MM/yyyy hh:mm', "pt_BR");
    return dateFormatterPtBr.format(this);
  }
}
