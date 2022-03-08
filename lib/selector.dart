import 'package:flutter/material.dart';
void main(){
  return runApp(Selector());
}

class Selector extends StatefulWidget {
  const Selector({ Key? key }) : super(key: key);

  @override
  State<Selector> createState() => _SelectorState();
}

class _SelectorState extends State<Selector> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: AppBar(title: Text('jkhjd'),),),);
  }
}
