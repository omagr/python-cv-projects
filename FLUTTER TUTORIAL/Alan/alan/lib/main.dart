import 'package:alan/pages/home_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Alan());
}

class Alan extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "alan",
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: HomePage(

      ),
    );
  }
}