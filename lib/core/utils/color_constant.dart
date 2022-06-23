import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#7f6565');

  static Color gray500 = fromHex('#a79b9b');

  static Color gray800 = fromHex('#443636');

  static Color gray900 = fromHex('#282020');

  static Color red200 = fromHex('#d4a8a8');

  static Color gray50 = fromHex('#fff4f4');

  static Color red50 = fromHex('#ffeaea');

  static Color black900Cc = fromHex('#cc000000');

  static Color black900 = fromHex('#000000');

  static Color whiteA700Bf = fromHex('#bfffffff');

  static Color bluegray400 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color black90005 = fromHex('#05000000');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
