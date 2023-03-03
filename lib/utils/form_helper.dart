// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// class FormHelper{
//   static Widget inputFieldWidget(
// BuildContext context,
// Icon icon,
// String keyName,
// String labelName,
// Function onValidate,
// Function onSaved, {
//   String initialValue ="",
//   obscureText: false,
//   Widget suffixIcon,
// }) {
// return Container(
// padding: EdgeInsets.only(left: 20,right: 20),
// child: TextFormField(
//   initialValue: initialValue,
//   key: new Key(keyName),
//   obscureText: obscureText,
//   validator: (val){
//     return onValidate(val);
//   },
//   onSaved: (val){
//     return onSaved(val);
//       },
//       style: TextStyle(fontSize: 18),
//       decoration: InputDecoration(
//         hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize:15),
//         hintText: labelName,
//         enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(25),
// borderSide: BorderSide(
// color: Theme.of(context).primaryColor,
// width: 1,
// ),
//         ),
//         border: OutlineInputBorder(
//           borderRadius:BorderRadius.circular(25),
//         ),
//         suffixIcon: suffixIcon,
//         prefixIcon: Padding(
// padding:EdgeInsets.only(left:30,right: 10),
// child: IconTheme(
//   data: IconThemeData(color: Theme.of(context).primaryColor),
// ),
//         ),
//       ),
// ),
// );
//   }
// }