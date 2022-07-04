import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle get kLargerTextStyle => TextStyle(fontSize: ScreenUtil().setSp(36));
TextStyle get kHeadingStyle => TextStyle(fontSize: ScreenUtil().setSp(18));
TextStyle get kContainerTextStyle =>
    TextStyle(fontSize: ScreenUtil().setSp(28));
TextStyle get kMedTextStyle => TextStyle(fontSize: ScreenUtil().setSp(25));
TextStyle get kMediumheadTextStyle =>
    TextStyle(fontSize: ScreenUtil().setSp(22));
TextStyle get kMediumheadStyle => TextStyle(fontSize: ScreenUtil().setSp(19));
TextStyle get kMediumTextStyle => TextStyle(fontSize: ScreenUtil().setSp(18));
TextStyle get kSmallTextStyle => TextStyle(fontSize: ScreenUtil().setSp(17));
TextStyle get kCardTextStyle => TextStyle(fontSize: ScreenUtil().setSp(14));
TextStyle get knewText => TextStyle(fontSize: ScreenUtil().setSp(16));
TextStyle get klabelText => TextStyle(fontSize: ScreenUtil().setSp(15));
TextStyle get kVerySmallTextStyle =>
    TextStyle(fontSize: ScreenUtil().setSp(20));
TextStyle get kVeryTextStyle => TextStyle(fontSize: ScreenUtil().setSp(26));
TextStyle get kVerysStyle => TextStyle(fontSize: ScreenUtil().setSp(13));
const FontWeight kBoldFontWeight = FontWeight.bold;
const FontWeight kRegularFontWeight = FontWeight.normal;
const FontWeight kLightFontWeight = FontWeight.w400;
const FontWeight kThinFontWeight = FontWeight.w100;

List<BoxShadow> boxshadow = [
  BoxShadow(
    color: Colors.grey.withOpacity(0.1),
    spreadRadius: 10,
    blurRadius: 20,
    offset: const Offset(1, 1), // changes position of shadow
  )
];
