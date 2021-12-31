import 'package:flutter/material.dart';


class Homepage extends StatelessWidget {
  final  name = 'din me';
  final days = 30 ;
  @override 
  Widget build(BuildContext content) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyApp'),
      ),
      body: Center(
          child: Container(
            child: Text("welocom bro $days and $name"),
          ),
        ),
        drawer: Drawer(),
    );
  }
}