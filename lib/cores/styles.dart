

import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
double heightAppBarLarge = 80;

///按钮
double heightButtonSmall = 31;
double fontButtonSmall = 31;
double heightButtonMedium = 36;
double fontButtonMedium = 28;
double heightButtonLarge = 44;

///按钮文字间距
double spaceButtonLetter = 20;

///
double paddingSmallx = 4;
double paddingSmall = 8;
double paddingMedium = 16;
double paddingLarge = 24;

///边框圆角
double radiusBorderSmall = 4;
double radiusBorderMedium = 8;
double radiusBorderLarge = 8;
// }

// FontWeight.w100 - Thin (100 weight)
// FontWeight.w200 - Extra-light (200 weight)
// FontWeight.w300 - Light (300 weight)
// FontWeight.w400 - Regular (400 weight)
// FontWeight.w500 - Medium (500 weight)ß
// FontWeight.w600 - Semi-bold (600 weight)
// FontWeight.w700 - Bold (700 weight)
// FontWeight.w800 - Extra-bold (800 weight)
// FontWeight.w900 - Black (900 weight)

abstract class AppFontStyle {
  static const thin = FontWeight.w100;
  static const extralight = FontWeight.w200;
  static const light = FontWeight.w300;
  static const regular = FontWeight.w400;
  static const medium = FontWeight.w600;
  static const semiBold = FontWeight.w700;
  static const bold = FontWeight.w800;
  static const extrabold = FontWeight.w800;
  static const black = FontWeight.w900;

  static TextStyle number(TextStyle t) {
    return t;
  }

  static TextStyle bold56 = const TextStyle(fontWeight: bold, fontSize: 56, height: 64 / 56);
  static TextStyle bold48 = const TextStyle(fontWeight: bold, fontSize: 48, height: 56 / 48);
  static TextStyle bold40 = const TextStyle(fontWeight: bold, fontSize: 40, height: 56 / 48);
  static TextStyle bold32 = const TextStyle(fontWeight: bold, fontSize: 32, height: 40 / 32);

  static TextStyle semiBold28 = const TextStyle(fontWeight: semiBold, fontSize: 28, height: 24 / 16);
  static TextStyle medium28 = const TextStyle(fontWeight: medium, fontSize: 28, height: 32 / 24);

  static TextStyle bold24 = const TextStyle(fontWeight: bold, fontSize: 24, height: 32 / 24);
  static TextStyle medium24 = const TextStyle(fontWeight: medium, fontSize: 24, height: 32 / 24);
  static TextStyle regular24 = const TextStyle(fontWeight: regular, fontSize: 24, height: 32 / 24);

  static TextStyle bold22 = const TextStyle(fontWeight: bold, fontSize: 22, height: 30 / 22);
  static TextStyle medium22 = const TextStyle(fontWeight: medium, fontSize: 22, height: 30 / 22);
  static TextStyle regular22 = const TextStyle(fontWeight: regular, fontSize: 22, height: 30 / 22);

  static TextStyle bold20 = const TextStyle(fontWeight: bold, fontSize: 20, height: 28 / 20);
  static TextStyle medium20 = const TextStyle(fontWeight: medium, fontSize: 20, height: 28 / 20);
  static TextStyle regular20 = const TextStyle(fontWeight: regular, fontSize: 20, height: 28 / 20);

  static TextStyle bold18 = const TextStyle(fontWeight: bold, fontSize: 18, height: 26 / 18);
  static TextStyle medium18 = const TextStyle(fontWeight: medium, fontSize: 18, height: 26 / 18);
  static TextStyle regular18 = const TextStyle(fontWeight: regular, fontSize: 18, height: 26 / 18);

  static TextStyle bold16 = const TextStyle(fontWeight: bold, fontSize: 16, height: 24 / 16);
  static TextStyle medium16 = const TextStyle(fontWeight: medium, fontSize: 16, height: 24 / 16);
  static TextStyle regular16 = const TextStyle(fontWeight: regular, fontSize: 16, height: 24 / 16);

  static TextStyle medium15 = const TextStyle(fontWeight: medium, fontSize: 15, height: 17.58 / 15);

  static TextStyle bold14 = const TextStyle(fontWeight: bold, fontSize: 14, height: 22 / 14);
  static TextStyle medium14 = const TextStyle(fontWeight: medium, fontSize: 14, height: 22 / 14);
  static TextStyle regular14 = const TextStyle(fontWeight: regular, fontSize: 14, height: 22 / 14);

  static TextStyle regular13 = const TextStyle(fontWeight: regular, fontSize: 13, height: 22 / 13);
  static TextStyle medium13 = const TextStyle(fontWeight: medium, fontSize: 13, height: 22 / 13);
  static TextStyle bold13 = const TextStyle(fontWeight: bold, fontSize: 13, height: 22 / 13);

  static TextStyle bold12 = const TextStyle(fontWeight: bold, fontSize: 12, height: 18 / 12);
  static TextStyle medium12 = const TextStyle(fontWeight: medium, fontSize: 12, height: 18 / 12);
  static TextStyle regular12 = const TextStyle(fontWeight: regular, fontSize: 12, height: 18 / 12);

  static TextStyle bold11 = const TextStyle(fontWeight: bold, fontSize: 11.5, height: 15.4 / 11);
  static TextStyle medium11 = const TextStyle(fontWeight: medium, fontSize: 11.5, height: 15.4 / 11);
  static TextStyle regular11 = const TextStyle(fontWeight: regular, fontSize: 11.5, height: 15.4 / 11);

  static TextStyle bold10 = const TextStyle(fontWeight: bold, fontSize: 10, height: 16 / 10);
  static TextStyle medium10 = const TextStyle(fontWeight: medium, fontSize: 10, height: 16 / 10);
  static TextStyle regular10 = const TextStyle(fontWeight: regular, fontSize: 10, height: 16 / 10);

  static TextStyle bold8 = const TextStyle(fontWeight: bold, fontSize: 8, height: 14 / 8);
  static TextStyle medium8 = const TextStyle(fontWeight: medium, fontSize: 8, height: 14 / 8);
  static TextStyle regular8 = const TextStyle(fontWeight: regular, fontSize: 8, height: 14 / 8);
}

extension TextsWidget on Text {
  Text get bold56 => copyWith(style: AppFontStyle.bold56.copyWith(color: style?.color, height: 1.2));

  Text get semiBold28 => copyWith(style: AppFontStyle.semiBold28.copyWith(color: style?.color, height: 1.2));

  Text get bold20 => copyWith(style: AppFontStyle.bold20.copyWith(color: style?.color, height: 1.2));

  Text get medium22 => copyWith(style: AppFontStyle.medium20.copyWith(color: style?.color, height: 1.2));

  Text get medium20 => copyWith(style: AppFontStyle.medium20.copyWith(color: style?.color, height: 1.2));

  Text get regular20 => copyWith(style: AppFontStyle.regular20.copyWith(color: style?.color, height: 1.2));

  Text get bold48 => copyWith(style: AppFontStyle.bold48.copyWith(color: style?.color, height: 1.2));

  Text get bold40 => copyWith(style: AppFontStyle.bold40.copyWith(color: style?.color, height: 1.2));

  Text get bold32 => copyWith(style: AppFontStyle.bold32.copyWith(color: style?.color, height: 1.2));

  Text get bold24 => copyWith(style: AppFontStyle.bold24.copyWith(color: style?.color, height: 1.2));

  Text get medium28 => copyWith(style: AppFontStyle.medium28.copyWith(color: style?.color, height: 1.2));

  Text get medium24 => copyWith(style: AppFontStyle.medium24.copyWith(color: style?.color, height: 1.2));

  Text get regular24 => copyWith(style: AppFontStyle.regular24.copyWith(color: style?.color, height: 1.2));

  Text get bold18 => copyWith(style: AppFontStyle.bold18.copyWith(color: style?.color, height: 1.2));

  Text get medium18 => copyWith(style: AppFontStyle.medium18.copyWith(color: style?.color, height: 1.2));

  Text get regular18 => copyWith(style: AppFontStyle.regular18.copyWith(color: style?.color, height: 1.2));

  Text get bold16 => copyWith(style: AppFontStyle.bold16.copyWith(color: style?.color, height: 1.2));

  Text get medium16 => copyWith(style: AppFontStyle.medium16.copyWith(color: style?.color, height: 1.2));

  Text get regular16 => copyWith(style: AppFontStyle.regular16.copyWith(color: style?.color, height: 1.2));

  Text get medium15 => copyWith(style: AppFontStyle.medium15.copyWith(color: style?.color, height: 1.2));

  Text get bold14 => copyWith(style: AppFontStyle.bold14.copyWith(color: style?.color, height: 1.2));

  Text get medium14 => copyWith(style: AppFontStyle.medium14.copyWith(color: style?.color, height: 1.2));

  Text get regular14 => copyWith(style: AppFontStyle.regular14.copyWith(color: style?.color, height: 1.2));

  Text get regular13 => copyWith(style: AppFontStyle.regular13.copyWith(color: style?.color, height: 1.2));

  Text get medium13 => copyWith(style: AppFontStyle.medium13.copyWith(color: style?.color, height: 1.2));

  Text get bold13 => copyWith(style: AppFontStyle.bold13.copyWith(color: style?.color, height: 1.2));

  Text get bold12 => copyWith(style: AppFontStyle.bold12.copyWith(color: style?.color, height: 1.2));

  Text get medium12 => copyWith(style: AppFontStyle.medium12.copyWith(color: style?.color, height: 1.2));

  Text get regular12 => copyWith(style: AppFontStyle.regular12.copyWith(color: style?.color, height: 1.2));

  Text get bold11 => copyWith(style: AppFontStyle.bold11.copyWith(color: style?.color, height: 1.2));

  Text get medium11 => copyWith(style: AppFontStyle.medium11.copyWith(color: style?.color, height: 1.2));

  Text get regular11 => copyWith(style: AppFontStyle.regular11.copyWith(color: style?.color, height: 1.2));

  Text get bold10 => copyWith(style: AppFontStyle.bold10.copyWith(color: style?.color, height: 1.2));

  Text get medium10 => copyWith(style: AppFontStyle.medium10.copyWith(color: style?.color, height: 1.2));

  Text get regular10 => copyWith(style: AppFontStyle.regular10.copyWith(color: style?.color, height: 1.2));

  Text get regular8 => copyWith(style: AppFontStyle.regular8.copyWith(color: style?.color, height: 1.2));

  Text get medium8 => copyWith(style: AppFontStyle.medium8.copyWith(color: style?.color, height: 1.2));
  Text get bold8 => copyWith(style: AppFontStyle.bold8.copyWith(color: style?.color, height: 1.2));

  Text copyWithAppFontStyle(TextStyle? appFontStyle) {
    return copyWith(style: appFontStyle!.copyWith(color: style?.color, height: 1.2));
  }

}
