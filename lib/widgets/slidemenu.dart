// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, camel_case_types, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/page_navigate/setting_page.dart';
import 'package:flutter_application_1/screens/page_navigate/user_page.dart';
import 'package:flutter_application_1/screens/page_navigate/profile_page.dart';
class Slidemenu extends StatelessWidget {
   final padding = EdgeInsets.symmetric(horizontal:5);
  @override
  Widget build(BuildContext context) {
    final name = 'Arissara Klaykaew';
    final email = 'arissara@demo.com';
    final urlImage = 'https://scontent.fbkk29-7.fna.fbcdn.net/v/t39.30808-6/314586963_5716667345054163_8755121027178605125_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHnmzwLXL3_0E2fQvpRF8H_HkI66NIWLSEeQjro0hYtIVDz3zqD8vNx0E1UoXJUHR1FNQ6Utd0EjDlxco8rGsxV&_nc_ohc=ZH9vVA2OjvcAX92itjV&_nc_ht=scontent.fbkk29-7.fna&oh=00_AfA18doII-wiMYDD6HMXvg2KcojT_QBYzogkOCUoH5m2hA&oe=64072606';
    return Drawer(
    child: Container(
  //color: Colors.blue,
  padding: padding,
  child: ListView(
  //padding:EdgeInsets.zero,
      children: <Widget>[
        buildHeader(
          urlImage: urlImage,
          name: name,
          email: email,
          onClicked: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => UserPage(
              name:name,
              urlImage:urlImage,
            ),
            )),
        ),
    Divider(color:Colors.grey),
        buildMenuItem(
          icon: Icons.message,
          text: 'ข้อความ',
         onClicked: () => null,
        ),
        buildMenuItem(
          icon: Icons.person,
          text: 'โปรไฟล์',
          onClicked: () => selectedItem(context, 0),
        ),
        //ขีดเส้นใต้และเว้นระยะ
        const SizedBox(height: 16,),
        Divider(color:Colors.grey),
        const SizedBox(height: 16,),
        buildMenuItem(
            icon: Icons.settings,
          text: 'ตั้งค่า',
          onClicked: () => selectedItem(context, 1),
        ),
         buildMenuItem(
            icon: Icons.logout,
          text: 'ออกจากระบบ',
          onClicked: () => null,
        ),
      ],
    ),
    ),
    );
  }

 Widget buildHeader({
    required String urlImage, 
    required String name, 
    required String email, 
    required VoidCallback onClicked
    }) =>
    InkWell(
      onTap: onClicked,
      child: Container(
      //padding: EdgeInsets.zero,
      //color: Colors.orange,
      padding: padding.add(EdgeInsets.symmetric(vertical: 20)),
  child: Row(
    children: [
      CircleAvatar(
        radius: 30, 
        backgroundImage: NetworkImage(urlImage)
        ),
      SizedBox(
        width: 20
        ),
        Column(
  crossAxisAlignment: CrossAxisAlignment.start,
    children: [
  Text(
    name,
    style: TextStyle(fontSize: 14, color: Colors.black),
  ),
  const SizedBox(height: 5),
   Text(
    email,
    style: TextStyle(fontSize: 12, color: Colors.black45),
  ),
],
    ),
    
  ],
),
),
    );


Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  final color = Colors.black54;
  final hoverColor = Colors.grey;

  return ListTile(
leading: Icon(icon, color: color),
title: Text(text, style: TextStyle(color: color)),
hoverColor:hoverColor,
onTap: onClicked,
  );
}
void selectedItem(BuildContext context, int index) {
switch (index){
  case 0:
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => ProfilePage(),
    ));
    break;
      case 1:
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => SettingPage(),
    ));
    break;
}
  }
}


