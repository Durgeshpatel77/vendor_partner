import 'dart:ui';

import 'package:flutter/cupertino.dart';

class ColorConst {
  static Color babyBlue = Color(0xff39F8FF);
  static Color feijoa = Color(0xffA3D886);
  static Color black = Color(0xff000000);
  static Color black1 = Color(0xff0A0A0A);
  static Color charcoal = Color(0xff424242);
  static Color shadyLady = Color(0xff9A9A9A);
  static Color matterHorn = Color(0xff4D4D4D);
  static Color gainsboro = Color(0xffE3E3E3);
  static Color dimGray = Color(0xff6A6A6A);
  static Color darkGray = Color(0xffB4B4B4);
  static Color white = Color(0xffFFFFFF);
  static Color whiteSmoke = Color(0xffEAEAEA);
  static Color columbiaBlue = Color(0xffACFCFF);
  static Color lightCyan = Color(0xffD1FDFE);
  static Color robinsBlue = Color(0xff00C6CD);
  static Color sealBrown = Color(0xff1B0E0A);
  static Color green = Color(0xff00A510);
  static Color red = Color(0xffE00000);
  static Color silver = Color(0xffB5B5B5);
  static Color easternBlue = Color(0xff009297);

  static LinearGradient verticalGradient = LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [feijoa, babyBlue]);

  static LinearGradient horizontalGradient= LinearGradient(
    begin:Alignment.bottomLeft,
    end: Alignment.bottomRight,
    colors: [feijoa,babyBlue]
  );
}
