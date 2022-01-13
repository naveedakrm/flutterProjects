import 'package:flt01/pages/home_page.dart';
import 'package:flt01/pages/login_page.dart';
import 'package:flt01/utils/MyRoute.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flt01/widgets/themes.dart';
void main(){
  runApp( MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      //home: homepage(),
      themeMode: ThemeMode.light,
      theme: MyThemes.myTheme(),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: MyRoute.routeHomePage,
      routes: {
        "/": (context)=>homepage(),
        MyRoute.routeHomePage:(context)=>homepage(),
        MyRoute.routeLoginPage:(context)=>LoginPage(),
      },



      );

  }
}
