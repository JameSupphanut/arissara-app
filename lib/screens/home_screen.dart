// ignore_for_file: prefer_const_constructors, dead_code, unused_import, use_key_in_widget_constructors



import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/customer_body.dart';
import 'package:flutter_application_1/screens/feed_body.dart';
import 'package:flutter_application_1/screens/plan_body.dart';
import 'package:flutter_application_1/widgets/bottomnavigate.dart';
import 'package:flutter_application_1/screens/home_body.dart';
import 'package:flutter_application_1/widgets/slidemenu.dart';
import 'package:flutter_application_1/utils/testdata.dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
//  PageController _pageController;
  int currentIndex = 0;
  //เรียงตาม currentIndex ด้วย
final screens = [
  Bodyhome(),
  Feedbody(),
  Planbody(),
  Customerbody(),
 
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
  appBar: AppBar(
    title: Text('Work Life'),
    
  ),
 //ส่วนที่เรียกมาจาก widget slidemenu
 //การเรียกแบบนี้คือให้เอาชื่อ widget ตามด้วยชื่อคลาสที่เราเขียนไว้ใน widget
  drawer: Slidemenu(),
  body: screens[currentIndex],   //body ไม่เก็บค่าไว้
  //bodyเก็บค่าไว้ ด้านล่าง
  // body: IndexedStack( 
  //   index: currentIndex,
  //   children: screens
  // ),
      // body: PageView(
      //   physics: NeverScrollableScrollPhysics(),
      //   // controller: _pageController,
      //   // onPageChanged: onPageChanged,
      //   children: List.generate(4, (index) => Bodyhome()),
      // ),
   //ส่วนที่เรียกมาจาก widget bottomnavigate
  // bottomNavigationBar:Bottomnavigate(),
  bottomNavigationBar:BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            //backgroundColor: Colors.orange,
            icon: Icon(Icons.home),         
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.feed_outlined),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note),
            label: 'Plan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Customer',
          ),

        ],

       currentIndex: currentIndex,
       onTap: (index)  => setState(() => currentIndex = index),
         //   onTap: _onItemTapped,
        selectedItemColor: Color.fromARGB(255, 57, 155, 30),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
   
  
  ),
   
    );
 
  }
  //      void navigationTapped(int page) {
  //   _pageController.jumpToPage(page);
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   _pageController = PageController(initialPage: 2);
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _pageController.dispose();
  // }

  // void onPageChanged(int page) {
  //   setState(() {
  //     this._page = page;
  //   });
  // }
}
