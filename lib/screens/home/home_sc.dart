import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeSc extends StatefulWidget {
  static String routeName = "/home";
  const HomeSc({ Key? key }) : super(key: key);

  @override
  _HomeScState createState() => _HomeScState();
}

class _HomeScState extends State<HomeSc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: Container(),),
      
    );
  }
}