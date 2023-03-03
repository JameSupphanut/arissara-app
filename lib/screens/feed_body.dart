// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/page_navigate/add_dailywork.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
class Feedbody extends StatelessWidget{

  @override
  Widget build (BuildContext context) => Scaffold(
    floatingActionButton:SpeedDial(
  backgroundColor: Colors.grey.shade50,
animatedIcon: AnimatedIcons.add_event,
children: [
    SpeedDialChild(
child: Icon(Icons.article),
label: 'เพิ่มงานประจำวัน',
onTap: () => selectedItem(context, 0),
  ),
],
),
    appBar: AppBar(
    bottom: PreferredSize(
    // Set whatever size you want - this is a good default one
    preferredSize: Size.fromHeight(-8),
    
    child: DefaultTabController(
      length: 2,
      child: TabBar(
        labelColor: Colors.white,
        
        // ignore: prefer_const_literals_to_create_immutables
        tabs: [
          Tab(
            text: 'งานวันนี้',
            
          ),
          Tab(
            text: 'สอบถาม',
          ),
        ],
      ),
          ),
    ),
  ),
body:WebView(
initialUrl: 'https://jame.endsoft.tech/dailywork',
javascriptMode: JavascriptMode.unrestricted,

),

  );
  void selectedItem(BuildContext context, int index) {
switch (index){
  case 0:
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => AddDailywork(),
    ));
    break;
  //     case 1:
  // Navigator.of(context).push(MaterialPageRoute(
  //   builder: (context) => SettingPage(),
  //   ));
  //   break;
}
  }
}