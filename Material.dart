

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class Appbar extends StatelessWidget{
  String title;
  Appbar({this.title});
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child:Row(
        children: <Widget>[
          IconButton(icon:Icon(Icons.menu,color: Colors.white,),),
          Expanded(child:Text(title,style:TextStyle(color: Colors.white,fontSize: 20,decoration: TextDecoration.none,fontWeight: FontWeight.bold),),),
          IconButton(icon:Icon(Icons.search,color: Colors.white,)),
          IconButton(icon:Icon(Icons.more_vert,color: Colors.white,),padding: EdgeInsets.all(0.0)),


        ],
      ),
    );
  }

}
class BottomNav extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 56.0,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(color: Colors.blue[500]),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon: Icon(Icons.arrow_back,color: Colors.white),onPressed: (){},padding: EdgeInsets.all(0.0)),
            IconButton(icon: Icon(Icons.remove,color: Colors.white),onPressed: (){},padding: EdgeInsets.all(0.0)),
            IconButton(icon: Icon(Icons.home,color: Colors.white),onPressed: (){}, padding: EdgeInsets.all(0.0),),
            IconButton(icon: Icon(Icons.add,color: Colors.white),onPressed: (){},padding: EdgeInsets.all(0.0)),
            IconButton(icon: Icon(Icons.arrow_forward,color: Colors.white),onPressed: (){},padding: EdgeInsets.all(0.0)),

          ],
        )
    );
  }

}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "appTest",
      home:Material(
        child:Column(
            children: <Widget>[
              Container(height: 24.1,decoration: BoxDecoration(color:Colors.blue[900]),),
              //for making margin from status bar.
              Appbar(title: "appTest",),
              Expanded(child: Container(color: Colors.black,),),
              BottomNav(),
            ]
        ) ,
      ),



    );
  }
}