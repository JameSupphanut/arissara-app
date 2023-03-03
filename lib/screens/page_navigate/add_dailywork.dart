

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
//import 'package:flutter_application_1/utils/';

class AddDailywork extends StatefulWidget {
  @override
  _AddDailyworkState createState() => _AddDailyworkState();
}

class _AddDailyworkState extends State<AddDailywork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('เพิ่มงานประจำวัน'),
    centerTitle: true,
    backgroundColor: Color(0xff80b7a2)
    // actions: [
    //   ChangeThemeButtonWidget(),
    // ],
  ),
      body: WebView(
        initialUrl: 'https://jame.endsoft.tech/node/add/dailywork',
        javascriptMode: JavascriptMode.unrestricted,
        )
      );
  }



  }

