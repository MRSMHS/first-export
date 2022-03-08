import 'package:flutter/material.dart';
import 'package:flutter_application_1/selector.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:splash_screen_view/splash_screen_view.dart';

void main(){
  return runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
static const titile_style=TextStyle(fontFamily: 'IRS',fontSize: 25,fontWeight:FontWeight.w800,color: Colors.blue,letterSpacing: 0.5 );
  @override
  Widget build(BuildContext context) {

Widget Example=SplashScreenView(
  navigateRoute:Selector(),
  pageRouteTransition:PageRouteTransition.Normal ,
  backgroundColor: Colors.white,
   duration:3000 ,
   imageSize:200 ,
   imageSrc: 'splashscreen_image.png',
   speed:100 ,
   text: ('به فروشگاه من خوش آمدید'),
   textStyle: titile_style,
   textType:TextType.TyperAnimatedText ,);

    return MaterialApp(debugShowCheckedModeBanner: false,
    home: Example,
      
    );
  }
}