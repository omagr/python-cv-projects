


import 'package:flutter_tutu_app/pages/login_page.dart';

import 'pages/homw_page.dart';


import 'package:flutter/material.dart';


import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {
   return MaterialApp(
   // home: Homepage(),
    themeMode: ThemeMode.light,
    theme: ThemeData(primarySwatch: Colors.red,
    fontFamily: GoogleFonts.lato().fontFamily),
    darkTheme: ThemeData(
      brightness: Brightness.dark
    ),
    //initialRoute: "/home",
    routes:{
      "/": (context) => LoginPage(),
      //  "MeraRoutes.homeroutes": (context) => Homepage(),
      "/logiin": (context) => LoginPage()
    } ,
   );


  }
}