// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/page_navigate/add_user.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Customerbody extends StatelessWidget{
  @override
  Widget build (BuildContext context) => Scaffold(
  //  backgroundColor: Colors.amber.shade300,
floatingActionButton:SpeedDial(
  backgroundColor: Colors.grey.shade50,
animatedIcon: AnimatedIcons.add_event,
children: [
  SpeedDialChild(
child: Icon(Icons.person_add),
label: 'เพิ่มลูกค้า',
onTap: () => selectedItem(context, 0),
  ),
],
),
    appBar: AppBar(
    bottom: PreferredSize(
    // Set whatever size you want - this is a good default one
    preferredSize: Size.fromHeight(-8),
    
    child: DefaultTabController(
      length: 3,
      child: TabBar(
        labelColor: Colors.white,
       
        
        // ignore: prefer_const_literals_to_create_immutables
        tabs: [
          Tab(
            text: 'ลูกค้า',
            
          ),
          Tab(
            text: 'โครงการ',
          ),
          Tab(
            text: 'จ๊อบ',
          ),
        ],
      ),
          ),
    ),
  
  ),
body:WebView(
        initialUrl: 'https://jame.endsoft.tech/customer',
        javascriptMode: JavascriptMode.unrestricted,
        )
  );
  void selectedItem(BuildContext context, int index) {
switch (index){
  case 0:
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => AddUserPage(),
    ));
    break;
}
  }
}