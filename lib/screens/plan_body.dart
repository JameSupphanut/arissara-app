// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Planbody extends StatelessWidget{
  @override
  Widget build (BuildContext context) => Scaffold(
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
            text: 'แผนงานของฉัน',
            
          ),
          Tab(
            text: 'งานทั้งหมด',
          ),
        ],
      ),
          ),
    ),
  ),
body:WebView(
initialUrl: 'https://jame.endsoft.tech/dailywork-tomorrow',
javascriptMode: JavascriptMode.unrestricted,

),
  );
}