import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle headlineStyle1 = GetFontBold(48.sp,Color.fromRGBO(150, 70, 190, 1));
TextStyle headlineStyle2 = GetFontBold(36.sp,Color.fromRGBO(158, 102, 187, 1));

TextStyle subtitleStyle1 = GetFontBold(20.sp,Color.fromRGBO(205, 143, 200, 1));
TextStyle buttonStyle1 = GetFontBold(24.sp,backgroundColor);

TextStyle indicatorStyle = GetFontBold(40.sp,AccentColor);



TextStyle headlineStyle3 = GetFont(28.sp,AccentColor);
TextStyle buttonStyle2 = GetFont(20.sp,AccentColor);

List<Color> buttonGradientColor = [Color.fromRGBO(150, 70, 190, 1),Color.fromRGBO(175, 136, 195, 1),]; 

Color dividerColor = Color.fromRGBO(215, 190, 210, 1);
Color backgroundColor = Color.fromRGBO(240, 240, 220, 1);
Color AccentColor = Color.fromRGBO(80, 80, 80, 1);
Color headlineColor = Color.fromRGBO(158, 102, 187, 1);



Color buttonSelectedBackgroundColor = Color.fromRGBO(255, 245, 190, 1);
Color buttonBackgroundColor = Color.fromRGBO(250, 250, 230, 1);




TextStyle GetFontBold(double _fontSize,Color _fontColor)
  => GoogleFonts.montserrat(
  fontSize: _fontSize,
  color: _fontColor,
  fontWeight: FontWeight.bold
);
TextStyle GetFont(double _fontSize,Color _fontColor)
  => GoogleFonts.montserrat(
  fontSize: _fontSize,
  color: _fontColor,
  fontWeight: FontWeight.w600
);
