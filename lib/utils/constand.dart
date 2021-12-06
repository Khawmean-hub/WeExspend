import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

setBaseColor(ind) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setInt('colors', ind);
}
baseColor(ind) {
  if(ind==null || ind < 1 || ind >5){
    ind=1;
  }
  switch (ind) {
    case 1:
      return Color(0xffFFD83D);
    case 2:
      return Color(0xffD9D3FF);
    case 3:
      return Color(0xffFF9B8B);
    case 4:
      return Color(0xffBED9C8);
    case 5:
      return Color(0xffAFDBE6);
  }
}


final Color whiteSmoke = Color(0xFFf6f6f6);
final Color lightGrey = Color(0xFFF4F4F2);
final Color lowBlackText = Color(0xFF909090);
final Color red = Colors.redAccent;
final Color blue = Color(0xFF1778f2);

String currentLang = "English";

// Menu Screen
TextStyle header1 = TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15);
TextStyle header2 = TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17);
TextStyle appBarTitle = TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold);
