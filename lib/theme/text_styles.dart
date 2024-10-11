import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

var mainFont = GoogleFonts.oswald();

TextStyle _baseTextStyle(Color color,
    {double fontSize = 14, FontWeight fontWeight = FontWeight.w400}) {
  return mainFont.copyWith(
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
  );
}

TextStyle _whiteText(
        {double fontSize = 14, FontWeight fontWeight = FontWeight.w400}) =>
    _baseTextStyle(Colors.white, fontSize: fontSize, fontWeight: fontWeight);

TextStyle _darkGunmetalText(
        {double fontSize = 14, FontWeight fontWeight = FontWeight.w400}) =>
    _baseTextStyle(darkGunmetal, fontSize: fontSize, fontWeight: fontWeight);

TextStyle _auroMetalSaurusText(
        {double fontSize = 14, FontWeight fontWeight = FontWeight.w400}) =>
    _baseTextStyle(auroMetalSaurus, fontSize: fontSize, fontWeight: fontWeight);

TextStyle _unitedNationsBlueText(
        {double fontSize = 14, FontWeight fontWeight = FontWeight.w400}) =>
    _baseTextStyle(unitedNationsBlue,
        fontSize: fontSize, fontWeight: fontWeight);

TextStyle _ghostWhiteText(
        {double fontSize = 14, FontWeight fontWeight = FontWeight.w400}) =>
    _baseTextStyle(ghostWhite, fontSize: fontSize, fontWeight: fontWeight);

TextStyle _brightGrayText(
        {double fontSize = 14, FontWeight fontWeight = FontWeight.w400}) =>
    _baseTextStyle(brightGray, fontSize: fontSize, fontWeight: fontWeight);

TextStyle _abyssalAnchorfishBlueText(
        {double fontSize = 14, FontWeight fontWeight = FontWeight.w400}) =>
    _baseTextStyle(abyssalAnchorfishBlue,
        fontSize: fontSize, fontWeight: fontWeight);

TextStyle white_16_500 = _whiteText(fontSize: 16, fontWeight: FontWeight.w500);
TextStyle white_18_500 = _whiteText(fontSize: 18, fontWeight: FontWeight.w500);

TextStyle brightGray_12_400 = _brightGrayText(fontSize: 12);
TextStyle brightGray_14_400 = _brightGrayText();
TextStyle brightGray_16_400 = _brightGrayText(fontSize: 16);

TextStyle ghostWhite_14_400 = _ghostWhiteText();
TextStyle ghostWhite_14_500 =
    _ghostWhiteText(fontSize: 14, fontWeight: FontWeight.w500);
TextStyle ghostWhite_16_500 =
    _ghostWhiteText(fontSize: 16, fontWeight: FontWeight.w500);
TextStyle ghostWhite_18_500 =
    _ghostWhiteText(fontSize: 18, fontWeight: FontWeight.w500);
TextStyle ghostWhite_20_500 =
    _ghostWhiteText(fontSize: 20, fontWeight: FontWeight.w500);
TextStyle ghostWhite_24_500 =
    _ghostWhiteText(fontSize: 24, fontWeight: FontWeight.w500);
TextStyle ghostWhite_28_500 =
    _ghostWhiteText(fontSize: 28, fontWeight: FontWeight.w500);

TextStyle darkGunmetal_12_500 =
    _darkGunmetalText(fontSize: 12, fontWeight: FontWeight.w500);
TextStyle darkGunmetal_14_400 = _darkGunmetalText();
TextStyle darkGunmetal_16_400 = _darkGunmetalText(fontSize: 16);
TextStyle darkGunmetal_14_500 =
    _darkGunmetalText(fontSize: 14, fontWeight: FontWeight.w500);
TextStyle darkGunmetal_16_500 =
    _darkGunmetalText(fontSize: 16, fontWeight: FontWeight.w500);
TextStyle darkGunmetal_18_500 =
    _darkGunmetalText(fontSize: 18, fontWeight: FontWeight.w500);
TextStyle darkGunmetal_20_500 =
    _darkGunmetalText(fontSize: 20, fontWeight: FontWeight.w500);
TextStyle darkGunmetal_24_500 =
    _darkGunmetalText(fontSize: 24, fontWeight: FontWeight.w500);
TextStyle darkGunmetal_28_500 =
    _darkGunmetalText(fontSize: 28, fontWeight: FontWeight.w500);

TextStyle auroMetalSaurus_12_400 = _auroMetalSaurusText(fontSize: 12);
TextStyle auroMetalSaurus_13_400 = _auroMetalSaurusText(fontSize: 13);
TextStyle auroMetalSaurus_14_400 = _auroMetalSaurusText();
TextStyle auroMetalSaurus_16_400 = _auroMetalSaurusText(fontSize: 16);

TextStyle unitedNationsBlue_14_500 =
    _unitedNationsBlueText(fontWeight: FontWeight.w500);

TextStyle abyssalAnchorfishBlue_18_500 =
    _abyssalAnchorfishBlueText(fontSize: 18, fontWeight: FontWeight.w500);
