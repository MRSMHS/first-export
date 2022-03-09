
import 'package:flutter/material.dart';

void maine(){
  return runApp(Selector());
}

class Selector extends StatefulWidget {
  const Selector({ Key? key }) : super(key: key);

  @override
  State<Selector> createState() => _SelectorState();
}

class _SelectorState extends State<Selector> {
static const titile_style=TextStyle(fontFamily: 'IRS',fontSize: 25,fontWeight:FontWeight.w800,color: Colors.blue,letterSpacing: 0.5 );


  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    home: Scaffold(body: 
    Center(child: Column(
      children: [
        SizedBox(height: 80,),
        Text('خوش آمدید ',style: titile_style,),
        SizedBox(height: 40,),
        Image.asset('assets/welcome.gif'),
        SizedBox(height: 20,),
        TextButton(onPressed: (){}, child: Text('ورود',style: TextStyle(fontSize: 25),),style:TextButton.styleFrom(backgroundColor: Colors.white,primary: Colors.blueAccent,elevation: 10,
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15) ),fixedSize: Size(330,60)
      
    )),
     TextButton(onPressed: (){}, child: Text('ثبت نام',style: TextStyle(fontSize: 25)),style:TextButton.styleFrom(backgroundColor: Colors.blueAccent,primary: Colors.white,elevation: 10,
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15) ),fixedSize: Size(330,60)
      
    ))],),),)
      
    );
  }
}