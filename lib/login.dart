import 'package:flutter/material.dart';

void main(){
  return runApp(Login());
}


class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  static const titile_style=TextStyle(fontFamily: 'IRS',fontSize: 25,fontWeight:FontWeight.w800,color: Colors.blue,letterSpacing: 0.5 );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('ورود',style: TextStyle(color: Colors.black45,fontFamily: 'IRS',fontSize: 22),),
      centerTitle: true,leading: Icon(Icons.arrow_back,color: Colors.black45,),),
      body: LoginUi(),),
      
    );
  }

  Widget LoginUi(){
    return Center(child: Column(
      children: [
        SizedBox(height: 60,),
        Text('فروشگاه آنلاین من',style:titile_style ,),
        SizedBox(height: 30,),
        Container(height:320,width: 250, 
        child: Card(shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10) ),elevation: 25,)),
      ],
    ));
  }
}
