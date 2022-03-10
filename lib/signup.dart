import 'package:flutter/material.dart';

import 'selector.dart';

void main(){
  return runApp(SignUp());
}

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: Builder(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(title: Text('ثبت نام',style: TextStyle(color: Colors.black45,fontFamily: 'IRS',fontSize: 22),),
          centerTitle: true,leading: InkWell(onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Selector()));
          },child: Icon(Icons.arrow_back,color: Colors.black45,)),),
          body:SignUpUi(),);
      }
    ),
      
    );
  }

}
class SignUpUi extends StatelessWidget {
  const SignUpUi({ Key? key }) : super(key: key);
      static const titile_style=TextStyle(fontFamily: 'IRS',fontSize: 25,fontWeight:FontWeight.w800,color: Colors.blue,letterSpacing: 0.5 );


  @override
  Widget build(BuildContext context) {
    return ListView(children: [
       Center(child: Column(
        children: [
          SizedBox(height: 60,),
          Text('فروشگاه آنلاین من',style:titile_style ,),
          SizedBox(height: 30,),
          Container(height:380  ,width: 250, 
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
                color: Colors.blue.shade500,letterSpacing: 0.5 )  ,
                decoration: InputDecoration(suffixIcon: Icon(Icons.lock_outline),hintText: 'کلمه عبور',
                hintStyle: TextStyle(fontFamily: 'IRS',fontSize: 10,fontWeight:FontWeight.w800,
                color: Colors.black12,letterSpacing: 0.5 )),),
            ),Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 20),
              child: Align(alignment:Alignment.centerRight ,
              child: Text('تکرار کلمه عبور',
              style: TextStyle(fontFamily: 'IRS',fontSize: 15,fontWeight:FontWeight.w800,
              color: Colors.blue.shade300,letterSpacing: 0.5 ),),),
        
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: TextField(textAlign:TextAlign.center,style:TextStyle(fontFamily: 'IRS',fontSize: 12,fontWeight:FontWeight.w800,
                color: Colors.blue.shade500,letterSpacing: 0.5 )  ,
                decoration: InputDecoration(suffixIcon: Icon(Icons.lock_outline),hintText: 'تکرار کلمه عبور',
                hintStyle: TextStyle(fontFamily: 'IRS',fontSize: 10,fontWeight:FontWeight.w800,
                color: Colors.black12,letterSpacing: 0.5 )),),
            )
          ],),
          
          ),
        
          ),
          SizedBox(height: 40,),
          TextButton(onPressed: (){}
          , child: Text('ثبت نام',style: TextStyle(fontFamily: 'IRS',fontSize: 25,
          fontWeight:FontWeight.w800,letterSpacing: 0.5 ),)
          ,style:TextButton.styleFrom(elevation: 5,primary: Colors.white,backgroundColor: Colors.blue,
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),fixedSize: Size(320, 60)) ,),
           SizedBox(height: 30,),
           
        ],
      )),
    ]
      
    );
  }
}