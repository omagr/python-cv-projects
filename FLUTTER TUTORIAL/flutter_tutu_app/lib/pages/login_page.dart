import 'dart:html';
import 'dart:js';
import 'package:flutter/material.dart';








class LoginPage extends StatelessWidget  {
  @override 

  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/image/undraw_Mobile_login_re_9ntv.png",fit: BoxFit.cover, height:200,),
            SizedBox(
              height:20.0
            ),
            Text("WELCOME BROTHER", style: TextStyle(
               fontSize: 30,
               color: Colors.blue,
               fontWeight: FontWeight.bold,
                ),
             ),
             SizedBox(height: 20.0,),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 19.0,horizontal: 32.0),
               child: Column(children: [
                 TextFormField(
      
                 decoration: InputDecoration(
                   hintText: "Enter Name",
                   labelText: "UserName"
                 ),
               ),
                TextFormField(
                  obscureText: true,
      
                 decoration: InputDecoration(
                   hintText: "Enter password",
                   labelText: "Password"
                 ),
               )
               ],),
             ),
              SizedBox(height: 20.0,),
               ElevatedButton(  child: Text('Login'),style:TextButton.styleFrom(minimumSize: Size(100, 50)),
               onPressed: () {
              // Navigator.pushNamed(context, MeraRoutes.homerotes);
              } , 
           )
          ],
      
        ),
      ),
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      //  Center(child: Text('Login Page',
      // style: TextStyle(
      //   fontSize: 30,
      //   color: Colors.blue,
      //   fontWeight: FontWeight.bold,
      // ),),
      // ),
    ); 
  }
}