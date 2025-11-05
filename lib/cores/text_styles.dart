import 'package:flutter/material.dart';

import 'common_colors.dart';


const centerTextStyle = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  color: CommonColors.centerTextColor,
);

const errorTextStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: CommonColors.errorColor,
);

const greyDarkTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: CommonColors.textColorGreyDark,
    height: 1.45);

const primaryColorSubtitleStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: CommonColors.colorPrimary,
    height: 1.45);

const whiteText16 = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);

const whiteText18 = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);

const whiteText32 = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);

const cyanText16 = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: CommonColors.textColorCyan,
);

const cyanText32 = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w400,
  color: CommonColors.textColorCyan,
);

const dialogSubtitle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: CommonColors.textColorPrimary,
);

const labelStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w400,
  height: 1.8,
);

final labelStylePrimaryTextColor = labelStyle.copyWith(
  color: CommonColors.textColorPrimary,
  height: 1,
);

final labelStyleAppPrimaryColor = labelStyle.copyWith(
  color: CommonColors.colorPrimary,
  height: 1,
);

final labelStyleGrey =
    labelStyle.copyWith(color: const Color(0xFF323232).withOpacity(0.5));

final labelCyanStyle = labelStyle.copyWith(color: CommonColors.textColorCyan);

const labelStyleWhite = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w400,
  height: 1.8,
  color: Colors.white,
);

const appBarSubtitleStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.25,
    color: CommonColors.colorWhite);

const cardTitleStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    height: 1.2,
    color: CommonColors.textColorPrimary);

const cardTitleCyanStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w500,
  color: CommonColors.colorPrimary,
);

const cardSubtitleStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.2,
    color: CommonColors.textColorGreyLight);

const titleStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w500,
  height: 1.34,
);

const settingsItemStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
);

final cardTagStyle = titleStyle.copyWith(color: CommonColors.textColorGreyDark);

const titleStyleWhite = TextStyle(
    fontSize: 18, fontWeight: FontWeight.w500, color: CommonColors.colorWhite);

const inputFieldLabelStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w500,
  height: 1.34,
  color: CommonColors.textColorPrimary,
);

const cardSmallTagStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.2,
    color: CommonColors.textColorGreyDark);

const pageTitleStyle = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w600,
    height: 1.15,
    color: CommonColors.appBarTextColor);

final pageTitleBlackStyle =
    pageTitleStyle.copyWith(color: CommonColors.textColorPrimary);

const appBarActionTextStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  color: CommonColors.colorPrimary,
);

const pageTitleWhiteStyle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    height: 1.15,
    color: CommonColors.colorWhite);

const extraBigTitleStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.w600,
  height: 1.12,
);

final extraBigTitleCyanStyle =
    extraBigTitleStyle.copyWith(color: CommonColors.textColorCyan);

const bigTitleStyle = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.w700,
  height: 1.15,
);

const mediumTitleStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w500,
  height: 1.15,
);

const descriptionTextStyle = TextStyle(
  fontSize: 16,
);

final bigTitleCyanStyle =
    bigTitleStyle.copyWith(color: CommonColors.textColorCyan);

const bigTitleWhiteStyle = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.w700,
  height: 1.15,
  color: Colors.white,
);

const boldTitleStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w700,
  height: 1.34,
);
final boldTitleWhiteStyle =
    boldTitleStyle.copyWith(color: CommonColors.textColorWhite);

final boldTitleCyanStyle =
    boldTitleStyle.copyWith(color: CommonColors.textColorCyan);

final boldTitleSecondaryColorStyle =
    boldTitleStyle.copyWith(color: CommonColors.textColorSecondary);

final boldTitlePrimaryColorStyle =
    boldTitleStyle.copyWith(color: CommonColors.colorPrimary);
