
import 'package:flutter/material.dart';

import '../../utils/hex_color.dart';

class ThemeColorLight {
  static Color primaryColor = HexColor('#293961');
  static Color defualtGridColor = HexColor('#117583');
  static Color gridColor2 = HexColor('#B5B0A8');
  static Color gridColor3 = HexColor('#7B6096');
  static Color gridColor4 = HexColor('#507996');
  static const Color grayscale = Color(0xFFA3A3A3);
  static const Color grayscaleBold = Color.fromRGBO(82, 82, 82, 1);

  static const Color labelColor = Color.fromRGBO(153, 153, 153, 1);

  static const Color dividerLine = Color(0xFFE4E4EE);

  static const Color firstGradientColor = Color(0xff408ADE);
  static const Color secondGradientColor = Color(0xff5286CD);

  static Color greyBorder = Colors.grey.shade300;

  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color grey = Colors.grey;

  static List<Color> gridColors = [
    ThemeColorLight.primaryColor,
    ThemeColorLight.gridColor2,
    ThemeColorLight.gridColor3,
    ThemeColorLight.gridColor4,
  ];
}
