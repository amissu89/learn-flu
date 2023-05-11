import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoPage extends StatefulWidget {
  const CupertinoPage({Key? key}) : super(key: key);

  @override
  State<CupertinoPage> createState() => _CupertinoPageState();
}

class _CupertinoPageState extends State<CupertinoPage> {

  bool cuperSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('cupertino navigatorbar')
      ),
      body: Column(
        children: <Widget>[
          CupertinoButton(
              child:
              Text('Cupertino button'),
              onPressed: onPressed),
          CupertinoSwitch(value: cuperSwitch, onChanged: (bool val){
            setState((){
              cuperSwitch = val;
            });
          }),
        ],
      )
    );
  }

  onPressed(){
    print('cupertino onpressed');
  }

  bool onChanged(){
    print('cupertino switch changed');
    return true;
  }
}
