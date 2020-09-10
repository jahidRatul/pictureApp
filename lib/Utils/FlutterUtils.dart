import 'package:flutter_money_formatter/flutter_money_formatter.dart';

///flutter_money_formatter: ^0.8.3

class FlutterUtils {
  static String dateFormatter(String s) {
    String date = '${s.split('-')[2]}-${s.split('-')[1]}-${s.split('-')[0]}';
    return date;
  }

  static String moneyFormatter(String s) {
    double money = 0.0;
    try {
      money = double.parse(s);
    } catch (e) {}
    FlutterMoneyFormatter fmf = FlutterMoneyFormatter(amount: money);
    return fmf.output.fractionDigitsOnly == '00'
        ? fmf.output.withoutFractionDigits
        : fmf.output.nonSymbol;
  }
}
