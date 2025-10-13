import 'package:intl/intl.dart';

class HumanFormats {
  
  static String humanReadbleNumbers(double number) {
    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);

    return formatterNumber;
  }
}
// instalar intl, y animate_do pubas con ctrl shift p 
// hacedr commit hacer construccion de menu lateral y y se formateo en numeros grandes
