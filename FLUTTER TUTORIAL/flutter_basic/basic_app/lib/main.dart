

import 'package:flutter/material.dart';


// void main() {
//   runApp(MyApp());
// }


// class MyApp  extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Stateless widget',
//       home: new Scaffold(
//         body: new Container(
//           color: Colors.red,
//           child: new Container(
//             color: Colors.amber,
//             margin: const EdgeInsets.all(30.0),
//             child: new Container(
//               color: Colors.pink,
//               margin: const EdgeInsets.all(60.0),
//               child: new Container(
//                 color: Colors.blue,
//                 margin: const EdgeInsets.all(90.0),
//               ),
//             )
//           ),
//         ),
//       ),
//     );   
//   }
// }



// -------------------------------------------------------------------------------------



// class MyApp extends StatelessWidget {
 

//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'statless widget',
//       home: new Scaffold(
//         body: new Center(
//           child: new RaisedButton(onPressed: null,child: new Text('data'),) 
            
      
//         ),
//       ),
//     );
//   }
// }


// -------------------------------------------------------------------------------------
// container 
// -------------------------------------------------------------------------------------


// class MyApp extends StatelessWidget {
 

//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: new Scaffold(
//         body: new Container(
//           color: Colors.red,
//           child: new Text('this is container'),
//           height: 200,
//           width: 200,
//           margin:,
//           alignment: Alignment.center,
//           padding: const EdgeInsets.all(90),
//           decoration: new BoxDecoration(

//           ),
//           transform: new Matrix4.rotationZ(0.8),
//           foregroundDecoration: new BoxDecoration(
//             color: Colors.pink
//           ),

          
//         ),
//       ),
//     );
//   }
// }



// -------------------------------------------------------------------------------------
// row/cloum 
// -------------------------------------------------------------------------------------


// class MyApp extends StatelessWidget {
 

//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: new Scaffold(
//         appBar: new AppBar(title: new Text('row & cloum'),),
//         body: new Row(
//           children: <Widget>[
//             new Text('this '),new Text('this '),new Text('this '),new Text('this '),new Text('this '),new Text('this ')
//           ],
//         ),
//       ),
//     );
  
//   }

// }

// -------------------------------------------------------------------------------------


// class MyApp extends StatelessWidget {
 

//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: new Scaffold(
//         appBar: new AppBar(title: new Text('row & cloum'),),
//         body: new Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             new Text('this '),
//             new Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[new Text('this '),new Text('this '),new Text('this ')],
//             )
            
//             ,new Text('this '),new Text('this '),new Text('this '),new Text('this ')
//           ],
//         ),
//       ),
//     );
  
//   }

// }


// -------------------------------------------------------------------------------------
// lists
// -----------------------------------------------------------------                      --------------------





// class MyApp extends StatelessWidget {
 

//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: new Scaffold(
//         appBar: new AppBar(title: new Text('row & cloum'),),
//         body: new ListView(

//           children: <Widget>[
//             new ListTile(
//               title: new Text('data'),
//               trailing: new Icon(Icons.arrow_forward),
//             ),
//              new ListTile(
//               title: new Text('data1'),
//               trailing: new Icon(Icons.arrow_forward),
//             ),
//              new ListTile(
//               title: new Text('data2'),
//               trailing: new Icon(Icons.arrow_forward),
//             )
//           ],
//         )
//       ));}}





// -------------------------------------------------------------------------------------
// array of list
// -------------------------------------------------------------------------------------

















































// -------------------------------------------------------------------------------------
// stack
// -------------------------------------------------------------------------------------





// class MyApp extends StatelessWidget {
 

//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: new Scaffold(
//         appBar: new AppBar(title: new Text('row & cloum'),),
//         body: Center(
//           child: new Stack(
//             alignment: Alignment.center,
//             children: <Widget>[
//               new Card(color: Colors.orange,child: new Padding(padding: const EdgeInsets.all(300.0)),),
//               new Card(color: Colors.pink,child: new Padding(padding: const EdgeInsets.all(200.0)),),

//               new Card(color: Colors.red,child: new Padding(padding: const EdgeInsets.all(100.0)),),

//               new Card(color: Colors.black,child: new Padding(padding: const EdgeInsets.all(50.0)),),

//               new Card(color: Colors.blue,child: new Padding(padding: const EdgeInsets.all(10.0)),),

//             ],
//           ),
//         )));}}



// -------------------------------------------------------------------------------------
// gridview
// -------------------------------------------------------------------------------------

void main() {
  runApp(new MaterialApp(home: new MyApp(),));
}

class MyApp  extends StatefulWidget {
 

  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    )
    
  }
}