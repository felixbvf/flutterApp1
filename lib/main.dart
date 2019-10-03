import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp()
  ));
}

class MyApp extends StatelessWidget {
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
            Card (
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      "I like Flutter",
                      style: TextStyle(
                        color: Colors.grey,
                        fontStyle: FontStyle.normal,
                        fontSize: 30
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                      size: 40.0,
                    )
                  ],
                )
              )
            )
          ]
        ),
      ),

    );
  }


}