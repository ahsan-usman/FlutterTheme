import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Apptheme {


    static const Color Scaffold_colorlt= Color(0xFFDBDBDA);
    static const Color appbar_colorlt= Colors.green;
    static const Color appbar_icon_colorlt= Color(0xFFEEEEEE);



    static const Color Scaffold_colordt= Color(0xFF212121);
    static const Color appbar_colordt= Colors.black;
    static const Color appbar_icon_colordt= Colors.white;


static final ThemeData Light_theme = ThemeData(
  scaffoldBackgroundColor: Scaffold_colorlt,
  appBarTheme: AppBarTheme(
    color: appbar_colorlt,
    iconTheme: IconThemeData(
      color: appbar_icon_colorlt,
    )
  )
);




static final ThemeData dark_theme = ThemeData(
    scaffoldBackgroundColor: Scaffold_colordt,
    appBarTheme: AppBarTheme(
        color: appbar_colordt,
        iconTheme: IconThemeData(
          color: appbar_icon_colordt,
        )
    )
);

}