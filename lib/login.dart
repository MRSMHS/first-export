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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('ورود',style: TextStyle(color: Colors.black45,fontFamily: 'IRS',fontSize: 22),),),
      body: LoginUi(),),
      
    );
  }

  Widget LoginUi(){
    return Card();
  }
}
