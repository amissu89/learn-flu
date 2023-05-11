import 'package:flutter/material.dart';
import 'cupertino_page.dart';

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
        home: HelloPage(title: "Hello world"));
        //home: CupertinoPage());
  }
}

class HelloPage extends StatefulWidget {
  const HelloPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HelloPage> createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  String _message = 'hello aaa';
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: changeMessage, child: Icon(Icons.add)),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _message,
            style: TextStyle(fontSize: 30),
          ),
          Text(
            '$counter',
            style: TextStyle(fontSize: 30),
          ),
          ElevatedButton(
            child: Text('화면 이동'),
            onPressed: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => CupertinoPage()));
            },
          )
        ],
      )),
      bottomNavigationBar: BottomAppBar(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
            Icon(Icons.phone),
            Icon(Icons.message),
            Icon(Icons.contact_page)
          ])),
    );
  }

  changeMessage() {
    setState(() {
      counter++;
    });
  }
}
