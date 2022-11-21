import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const kPrimaryColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);

const double defaultPadding = 16.0;

const kSpacingUnit = 10;

// const kDarkPrimaryColor = Color(0xFF212121);
// const kDarkSecondaryColor = Color(0xFF373737);
// const kLightPrimaryColor = Color(0xFFFFFFFF);
// const kLightSecondaryColor = Color(0xFFF3F7FB);
// const kAccentColor = Color(0xFFFFC107);

const kTitleTextStyle = TextStyle(
  // fontSize: ScreenUtil().se,
  fontWeight: FontWeight.w600,
);

const kCaptionTextStyle = TextStyle(
  // fontSize: ScreenUtil().setSp(kSpacingUnit.w * 1.3),
  fontWeight: FontWeight.w100,
);

const kButtonTextStyle = TextStyle(
  fontWeight: FontWeight.w400,
  color: kPrimaryColor,
);

final kDarkTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: 'SFProText',
  primaryColor: kPrimaryColor,
  canvasColor: kPrimaryColor,
  backgroundColor: kPrimaryColor,
  accentColor: kPrimaryColor,
  iconTheme: ThemeData.dark().iconTheme.copyWith(
    color: kPrimaryColor,
  ),
  textTheme: ThemeData.dark().textTheme.apply(
    fontFamily: 'SFProText',
    bodyColor: kPrimaryColor,
    displayColor: kPrimaryColor,
  ),
);

final kLightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: 'SFProText',
  primaryColor: kPrimaryColor,
  canvasColor: kPrimaryColor,
  backgroundColor: kPrimaryColor,
  accentColor: kPrimaryColor,
  iconTheme: ThemeData.light().iconTheme.copyWith(
    color: kPrimaryColor,
  ),
  textTheme: ThemeData.light().textTheme.apply(
    fontFamily: 'SFProText',
    bodyColor: kPrimaryColor,
    displayColor: kPrimaryColor,
  ),
);