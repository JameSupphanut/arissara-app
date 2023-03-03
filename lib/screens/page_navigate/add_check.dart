

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
//import 'package:flutter_application_1/utils/';

class AddCheckIn extends StatefulWidget {
  @override
  _AddCheckInState createState() => _AddCheckInState();
}

class _AddCheckInState extends State<AddCheckIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('บันทึกการเข้างาน/ออกงาน'),
    centerTitle: true,
    backgroundColor: Color(0xff80b7a2)
    // actions: [
    //   ChangeThemeButtonWidget(),
    // ],
  ),
      body: WebView(
        initialUrl: 'https://jame.endsoft.tech/node/add/checkin_checkout',
        javascriptMode: JavascriptMode.unrestricted,
        )
      );
  }



  }

