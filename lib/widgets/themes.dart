
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static ThemeData myTheme()=> ThemeData(
    primarySwatch: Colors.indigo,
    fontFamily: GoogleFonts.lato().fontFamily,
    appBarTheme:AppBarTheme(
      color:Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.white),
     // toolbarTextStyle:TextStyle()
    )
  );

}