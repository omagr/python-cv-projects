
import 'package:alan/utils/ai_utils.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as htp;



class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var api = "https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail";
  @override
  void initState(){
    super.initState();
    fetchData();
  }
  fetchData()async{
    var res = await htp.get(api);
    print(res.body);

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title:  Center(child: Text('Allan')),
        backgroundColor: Colors.deepOrangeAccent,
      ), 
      body: Center(
        child: ListView.builder(itemCount: 40,itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Daaru $index",style: TextStyle(fontSize: 34,color: Colors.white),),
          );
        
        }
      ),
      )); 
  }
}              









// yeh abtk ki mehnat jo tutorial me ki hai 




//  Center(
//           child: Column(
            
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcL28ybBuZsCxBlfFQeCqgFcv5QVas2AeJrQ&usqp=CAU",
//               fit: BoxFit.contain,
//               width: 400,height: 400,),
//               Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                   FlatButton(onPressed: () {}, child: Text('data'),color: Colors.white,)
//           ]
//         )
//             ],
//           )
        
//         )