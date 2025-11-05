import 'dart:async';

import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

import 'common_colors.dart';



extension ThrottleExtension on Function {
  void Function() throttle([int milliseconds = 500]) {
    bool isAllowed = true;
    Timer? throttleTimer;
    return () {
      if (!isAllowed) return;
      isAllowed = false;
      this();
      throttleTimer?.cancel();
      throttleTimer = Timer(Duration(milliseconds: milliseconds), () {
        isAllowed = true;
      });
    };
  }
}
extension AsyncThrottleExtension on Future<void> {
  Function() throttle([int milliseconds = 500]) {
    bool isRunning = false;
    Timer? timer;

    return () async {
      if (isRunning) return;
      isRunning = true;
      await this;
      timer?.cancel();
      timer = Timer(Duration(milliseconds: milliseconds), () {
        isRunning = false;
      });
    };
  }
}

extension StylesdWidget on Widget {
  Widget onTap(GestureTapCallback? onTap) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        if (onTap != null) {
          onTap();
        }
      },
      child: this,
    );
  }

  Widget show(bool isShow) {
    return isShow
        ? this
        : const SizedBox(
      width: 0.1,
      height: 0.1,
    );
  }

  Widget size({double? width, double? height}) => SizedBox(
    width: width,
    height: height,
    child: this,
  );

  Widget right({Widget? child}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [this, child ?? Container()],
    );
  }

  Widget bottom({Widget? child}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [this, child ?? Container()],
    );
  }
}

extension TextWidget on Text {

  Text underLine({Color? underLineColor}) {
    return copyWith(style: style!.copyWith(decoration: TextDecoration.underline, decorationColor: underLineColor));
  }
}

extension TextColorsWidget on Text {
  Text get primary => copyWith(style: style!.copyWith(color: CommonColors.specialButtonColor));


  Text get textTitle => copyWith(style: style!.copyWith(color: CommonColors.fontTitleColor));

  Text get textPrimary => copyWith(style: style!.copyWith(color: CommonColors.colorBlack));

  Text get textSecondary => copyWith(style: style!.copyWith(color: const Color(0xFF999999)));

  // Text get textTertiary => copyWith(style: style!.copyWith(color: appTheme.textTertiary));
  //
  // Text get textDisable => copyWith(style: style!.copyWith(color: appTheme.textDisable));

  Text get textWhite => copyWith(style: style!.copyWith(color: CommonColors.colorWhite));

  Text get textBlack => copyWith(style: style!.copyWith(color: CommonColors.colorBlack));

  // Text get success => copyWith(style: style!.copyWith(color: appTheme.success));

  Text get error => copyWith(style: style!.copyWith(color: CommonColors.errorColor));

  Text get textAlert => copyWith(style: style!.copyWith(color: CommonColors.alertTextColor));

  // Text get warning => copyWith(style: style!.copyWith(color: appTheme.warning));

  Text copyWithColor(Color? color) {
    if (color == null) {
      return this;
    }

    return copyWith(style: style!.copyWith(color: color));
  }
}
