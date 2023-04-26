

import 'dart:ui';

class ColorManager {
  static Color primary = const Color(0xfff89300);
  static Color darkGrey = const Color(0xff525252);
  static Color grey = const Color(0xff737477);
  static Color lightGrey = const Color(0xff979596);

  // new colors
  static Color darkPrimary = const Color(0xfff89300);
  static Color lightPrimary = const Color(0xCCf89300); // color with 80% opacity
  static Color grey1 = const Color(0xff707070);
  static Color grey2 = const Color(0xff797979);
  static Color white = const Color(0xffFFFFFF);
  static Color black = const Color(0xff000000);
  static Color error = const Color(0xffe61f34); // red color
}

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('FF');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}