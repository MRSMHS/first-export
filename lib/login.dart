import 'package:flutter/material.dart';
import 'package:flutter_application_1/selector.dart';
import 'package:flutter_application_1/signup.dart';

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
    return MaterialApp(debugShowCheckedModeBanner: false,home: Builder(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(title: Text('ورود',style: TextStyle(color: Colors.black45,fontFamily: 'IRS',fontSize: 22),),
          centerTitle: true,leading: InkWell(onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Selector()));
          },child: Icon(Icons.arrow_back,color: Colors.black45,)),),
          body: LoginUi(),);
      }
    ),
      
    );
  }

}
class LoginUi extends StatelessWidget {
  const LoginUi({ Key? key }) : super(key: key);
    static const titile_style=TextStyle(fontFamily: 'IRS',fontSize: 25,fontWeight:FontWeight.w800,color: Colors.blue,letterSpacing: 0.5 );


  @override
  Widget build(BuildContext context) {
    return ListView(children: [
       Center(child: Column(
        children: [
          SizedBox(height: 60,),
          Text('فروشگاه آنلاین من',style:titile_style ,),
          SizedBox(height: 30,),
          Container(height:320,width: 250, 
          child: Card(shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10) ),elevation: 25,
          child: Column(children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 20),
              child: Align(alignment:Alignment.centerRight ,
              child: Text('نام کاربری',
              style: TextStyle(fontFamily: 'IRS',fontSize: 15,fontWeight:FontWeight.w800,
              color: Colors.blue.shade300,letterSpacing: 0.5 ),),),
        
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: TextField(textAlign:TextAlign.center,style:TextStyle(fontFamily: 'IRS',fontSize: 12,fontWeight:FontWeight.w800,
                color: Colors.blue.shade500,letterSpacing: 0.5 )  ,decoration: InputDecoration(suffixIcon: Icon(Icons.phone_android),hintText: 'شماره موبایل',hintStyle: TextStyle(fontFamily: 'IRS',fontSize: 10,fontWeight:FontWeight.w800,
                color: Colors.black12,letterSpacing: 0.5 )),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 20),
              child: Align(alignment:Alignment.centerRight ,
              child: Text('کلمه عبور',
              style: TextStyle(fontFamily: 'IRS',fontSize: 15,fontWeight:FontWeight.w800,
              color: Colors.blue.shade300,letterSpacing: 0.5 ),),),
        
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: TextField(textAlign:TextAlign.center,style:TextStyle(fontFamily: 'IRS',fontSize: 12,fontWeight:FontWeight.w800,
                color: Colors.blue.shade500,letterSpacing: 0.5 )  ,decoration: InputDecoration(suffixIcon: Icon(Icons.lock_outline),hintText: 'کلمه عبور',hintStyle: TextStyle(fontFamily: 'IRS',fontSize: 10,fontWeight:FontWeight.w800,
                color: Colors.black12,letterSpacing: 0.5 )),),
            )
          ],),
          
          ),
        
          ),
          SizedBox(height: 40,),
          TextButton(onPressed: (){}
          , child: Text('ورود',style: TextStyle(fontFamily: 'IRS',fontSize: 25,
          fontWeight:FontWeight.w800,letterSpacing: 0.5 ),)
          ,style:TextButton.styleFrom(elevation: 5,primary: Colors.white,backgroundColor: Colors.blue,
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),fixedSize: Size(320, 60)) ,),
           SizedBox(height: 30,),
           InkWell(onTap: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SignUp()));
           },
             child: Text('حساب کاربری ندارم',style:TextStyle(fontFamily: 'IRS',fontSize: 20,color: Colors.blue,letterSpacing: 0.5 ) ,))
        ],
      )),
    ]);
  }
}