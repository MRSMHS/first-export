import 'package:flutter/material.dart';
import 'package:flutter_application_1/Product.dart';
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
      List<Product>_items=[
        Product('توضیحات محصول', '1', 'https://s6.uupload.ir/files/console_hr6m.jpg', 'کنسول بازی با ظرفیت 1 ترابایت', '15385000'),
        Product('توضیحات محصول', '1', 'https://s6.uupload.ir/files/console_hr6m.jpg', 'گوشی موبایل', '6200000'),
        Product('توضیحات محصول', '1', 'https://s6.uupload.ir/files/console_hr6m.jpg', 'لپ تاپ دانش آموزی ', '9800000'),
        Product('توضیحات محصول', '1', 'https://s6.uupload.ir/files/console_hr6m.jpg', 'ماشین اصلاح', '1350000'),
      ];

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
  children: [Icon(Icons.arrow_back_ios_new_rounded),Text('پرفروشترین محصولات',style: titile_style ,)],)) ,),
  Container(height:340,child: Padding(padding: EdgeInsets.all(10),
  child: GridView.count(
    crossAxisCount: 1,crossAxisSpacing: 10, mainAxisSpacing: 10, scrollDirection: Axis.horizontal,
    children: List.generate(_items.length, (int position) {
      return generatItems(_items[position],context);
    }),),),),
    SizedBox(height:5,),
       Container(height: 120,width: double.infinity,
       child: Card(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,elevation: 10,
       child:Image.network('https://s6.uupload.ir/files/ban_4_jxpg.jpg',fit: BoxFit.fill,) ,),),
       Container(height: 120,width: double.infinity,
       child: Builder(
         builder: (context) {
           return Row(
           children: [
             Container(height: 120,width: MediaQuery.of(context).size.width/2,child: Card(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,elevation: 10,
           child:Image.network('https://s6.uupload.ir/files/ban_5_s0pa.jpg',fit: BoxFit.fill,) ,),),
             Container(height: 120,width: MediaQuery.of(context).size.width/2,
             child:Card(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,elevation: 10,
           child:Image.network('https://s6.uupload.ir/files/ban_6_9iey.jpg',fit: BoxFit.fill,) ,) ,)
           ],);
         }
       ),)
    ],),
  );
}
Card generatItems(Product product,BuildContext context ){
return Card(elevation: 10,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), child: InkWell(onTap: (){},child: Center(
  child: Column(mainAxisAlignment:MainAxisAlignment.center ,children: [
    Container(height: 170,width: 190,child: Image.network(product.image),),
    SizedBox(height: 5,),
    Container(height:50,width:190 ,child: Text(product.name,textDirection: TextDirection.rtl,
    style: TextStyle(fontFamily: 'IRS',fontSize: 15,
      fontWeight:FontWeight.w800,color: Colors.teal,letterSpacing: 0.5 ),), alignment:Alignment.center ,),
      Divider(height: 1,color: Colors.grey,thickness: 2,endIndent: 15,indent: 15,),
       SizedBox(height: 5,),
       Padding(
         padding: const EdgeInsets.fromLTRB(30,0, 0, 0),
         child: Row(mainAxisAlignment:MainAxisAlignment.center ,
           children: [
             Text('تومان',style: titile_style,),
             Text(product.price,style: titile_style,),
           ],),
       ),
       

  ],),),),);
}

}