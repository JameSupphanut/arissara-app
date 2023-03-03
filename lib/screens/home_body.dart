// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/page_navigate/add_check.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:flutter_speed_dial/flutter_speed_dial.dart';
class Bodyhome extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Bodyhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     floatingActionButton:SpeedDial(
  backgroundColor: Colors.grey.shade50,
animatedIcon: AnimatedIcons.add_event,
children: [
    SpeedDialChild(
child: Icon(Icons.article),
label: 'บันทึกเวลาเข้างาน/ออกงาน',
onTap: () => selectedItem(context, 0),
  ),
],
),
      body: WebView(
        initialUrl: 'https://jame.endsoft.tech/checkin-checkout',
        javascriptMode: JavascriptMode.unrestricted,
        )
      );
  }
 void selectedItem(BuildContext context, int index) {
switch (index){
  case 0:
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => AddCheckIn(),
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

