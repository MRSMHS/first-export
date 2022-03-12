import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

void main(){
  return runApp(Home());
}

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
      static const titile_style=TextStyle(fontFamily: 'IRS',fontSize: 18,
      fontWeight:FontWeight.w800,color: Colors.teal,letterSpacing: 0.5 );
      int _selectedIndex=1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    home: Scaffold(appBar: AppBar(backgroundColor: Colors.white,centerTitle: true,elevation: 10,title:Text('فروشگاه من',style: titile_style,) ,
    actions: [IconButton(icon: Icon(Icons.shopping_basket,color: Colors.black45,),onPressed:(){} ,)],),
    body:MainUi() ,


    bottomNavigationBar:BottomNavigationBar(
      
      selectedFontSize:14 ,
      selectedIconTheme:IconThemeData(color: Colors.teal,size: 20) ,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.amber,
      elevation: 20,
      type:BottomNavigationBarType.fixed ,
      selectedLabelStyle:titile_style ,
      unselectedIconTheme:IconThemeData(size: 20) ,
      unselectedLabelStyle:titile_style ,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped ,
      
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.settings,),label: 'تنظیمات',),
         BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'صفحه اصلی'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket,),label: 'سبد خرید'),
      ]) ,),);
  }
void _onItemTapped(int index){
  setState(() {
    _selectedIndex=index;
  });
}

Widget MainUi(){
  return SingleChildScrollView(
    scrollDirection:Axis.vertical ,
    child: Column(children:<Widget> [
      ImageSlideshow(
        height: 160,width: double.infinity,
        indicatorBackgroundColor: Colors.grey,indicatorColor: Colors.white,
        initialPage: 0,
        autoPlayInterval: 6000,
        isLoop: true,
        children:[
          Image.asset('assets/slider_1.jpg',fit:BoxFit.fill ,),
          Image.asset('assets/slider_2.jpg',fit:BoxFit.fill ,),
          Image.asset('assets/slider_3.jpg',fit:BoxFit.fill ,)
        ] )
,SizedBox(height: 10,)
,InkWell(onTap:(){} ,
child:Container(height: 60,margin:EdgeInsets.fromLTRB(30,0, 30, 0),
child: Row(crossAxisAlignment:CrossAxisAlignment.center,mainAxisAlignment:MainAxisAlignment.spaceBetween  ,
  children: [Icon(Icons.arrow_back_ios_new_rounded),Text('پرفروشترین محصولات',style: titile_style ,)],)) ,)
    ],),
  );
}

}