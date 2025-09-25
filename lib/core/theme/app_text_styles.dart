import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static const String fontFamily = 'Releway';

  // Base text style with common properties
  static TextStyle _baseTextStyle({
    required double fontSize,
    required FontWeight fontWeight,
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  //! Regular
  static TextStyle get reg13 => _regular(fontSize: 13);

  //! Medium
  static TextStyle get med12 => _medium(fontSize: 12);
  static TextStyle get med13 => _medium(fontSize: 13);
  static TextStyle get med14 => _medium(fontSize: 14);
  static TextStyle get med15 => _medium(fontSize: 15);

  //! SemiBold
  static TextStyle get semiBold12 => _semiBold(fontSize: 12);
  static TextStyle get semiBold14 => _semiBold(fontSize: 14);
  static TextStyle get semiBold16 => _semiBold(fontSize: 16);

  //! Bold
  static TextStyle get bold14 => _bold(fontSize: 14);
  static TextStyle get bold16 => _bold(fontSize: 16);
  static TextStyle get bold24 => _bold(fontSize: 24);

  //! Extra Bold

  static TextStyle _regular({
    required double fontSize,
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w400,
      color: color,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle _medium({
    required double fontSize,
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      color: color,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle _semiBold({
    required double fontSize,
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      color: color,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle _bold({
    required double fontSize,
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
      color: color,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle _extraBold({
    required double fontSize,
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return _baseTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w800,
      color: color,
      height: height,
      letterSpacing: letterSpacing,
    );
  }
}
