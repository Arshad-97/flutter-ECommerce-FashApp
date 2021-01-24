import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text('FashApp'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color:Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color:Colors.white,), onPressed: (){})
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: Text('Arshad AGM'),
             accountEmail: Text('agmArshad97@gmail.com'),
             currentAccountPicture: GestureDetector(
               child: new CircleAvatar(
                 backgroundColor: Colors.grey,
                 child: Icon(Icons.person, color: Colors.white,),
               ),
             ),),
          ],
        )
      ),
    );    
  }
}