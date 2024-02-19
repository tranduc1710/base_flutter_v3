import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'base.dart';
import 'screen_utils.dart';

ScreenUtil get _screenUtil => ScreenUtil();

extension ExString on String {
  Widget wText({
    TextStyle? style,
    int? maxLength,
  }) =>
      Text(
        maxLength == null || maxLength == 0 || this.length > maxLength.abs() ? this : this.substring(0, maxLength.abs()) + '...',
        style: style ?? AppStyle.normal,
      );

  Widget wTextRequired({TextStyle? style}) => RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: this,
              style: style ?? AppStyle.normal,
            ),
            TextSpan(
              text: "*",
              style: (style ?? AppStyle.normal).copyWith(color: Colors.red),
            ),
          ],
        ),
      );

  Widget wTextColonRequired({TextStyle? style}) => RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "$this:",
              style: style ?? AppStyle.normal,
            ),
            TextSpan(
              text: "*",
              style: (style ?? AppStyle.normal).copyWith(color: Colors.red),
            ),
          ],
        ),
      );

  String get colon => "$this:";
}

extension ExNum on num {
  Future delayed([FutureOr Function()? computation]) async => await Future.delayed(
        Duration(milliseconds: (this * 1000).toInt()),
        computation,
      );

  double get w => _screenUtil.screenWidth * this;

  double get h => _screenUtil.screenHeight * this;

  double get sp => _screenUtil.setSp(this);

  double get dm => _screenUtil.diameter(this);

  Widget wSpaceHeight() => SizedBox(height: dm);

  Widget wSpaceWidth() => SizedBox(width: dm);
}

extension ExDoubleNull on double? {
  double get value => this ?? 0;

  String get valueString => "${this ?? 0}";
}

extension ExIntNull on int? {
  int get value => this ?? 0;

  String get valueString => "${this ?? 0}";
}

extension ExDateTime on DateTime {
  String withFormat([String? format]) {
    format ??= "dd/MM/yyyy";
    return DateFormat(format).format(this);
  }
}

extension ExStringNull on String? {
  String get value => this ?? '';
}

extension ExWidget on Widget {
  Widget wPadding([EdgeInsets? edgeInsets]) => Padding(
        padding: edgeInsets ?? AppEdgeInsets.item,
        child: this,
      );

  Widget wCenter() => Center(child: this);

  Widget wUnFocus() => GestureDetector(
        child: this,
        onTap: () => WidgetsBinding.instance.focusManager.primaryFocus?.unfocus(),
      );

  Widget onTap(Function() onTap) => InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(Constant.radius / 2),
        child: this,
      );
}
