

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
//import 'package:flutter_application_1/utils/';

class AddUserPage extends StatefulWidget {
  @override
  _AddUserPageState createState() => _AddUserPageState();
}

class _AddUserPageState extends State<AddUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('เพิ่มลูกค้า'),
    centerTitle: true,
    backgroundColor: Color(0xff80b7a2)
    // actions: [
    //   ChangeThemeButtonWidget(),
    // ],
  ),
      body: WebView(
        initialUrl: 'https://jame.endsoft.tech/node/add/customer',
        javascriptMode: JavascriptMode.unrestricted,
        )
      );
  }



  }

