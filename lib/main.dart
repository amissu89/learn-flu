import 'package:flutter/material.dart';

void main() {
  //runApp : please run this app
  runApp(const MyApp());
}

//stless + tab key
// 4 Main widgets
/*
* text
* image
* icon
* box
* **/
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //flutter design : widget
    return MaterialApp(
        // text widget
        // home : Text('hello')
        // Icon widget
        //home : Icon(Icons.star)
        // Image widget
        //home: Image.asset('buddha.jpg')
        // Box widget
        //unit : LP. 50LP, 100LP라는 것
        // home: Center(
        //     child: Container(width: 50, height: 100, color: Colors.blue)));
      title: 'This is app',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('This is my first app'),
          ),
          body: Row( //Row
            children: const [
              Text('hello')
            ]
          ),
          bottomNavigationBar: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page)
              ]
            )
          ),
        )
    );
  }
}
