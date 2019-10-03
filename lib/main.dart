import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp()
  ));
}

class MyApp extends StatelessWidget {
  final double iconSize = 40.0;
  final TextStyle textStyle = TextStyle(
                        color: Colors.grey,
                        fontStyle: FontStyle.normal,
                        fontSize: 30);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless widget"),
      ),

      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MyCard(
              title: Text("I like Flutter",style: textStyle),
              icon: Icon(Icons.favorite,color: Colors.redAccent, size: iconSize)
            ),
            MyCard(
              title: Text("I like this video",style: textStyle),
              icon: Icon(Icons.thumb_up, color: Colors.blueAccent, size: iconSize)
            ),
            MyCard(
              title: Text("Next video",style: textStyle),
              icon: Icon(Icons.queue_play_next, color: Colors.brown, size: iconSize)
            )
          ]
        ),
      ),
    );
  }


}

//
class MyCard extends StatelessWidget{
  final Widget title;
  final Widget icon;

  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context)
  {
    return Card (
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    this.title,
                    this.icon
                  ],
                )
              )
    );

  }


}