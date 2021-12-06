import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:we_exspend/screens/home/home_sc.dart';
import 'package:we_exspend/utils/constand.dart';
import 'package:we_exspend/utils/routes.dart';
import 'package:we_exspend/utils/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shared_preferences/shared_preferences.dart';

int indexColor = 0;


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final FirebaseApp app = await Firebase.initializeApp();
  indexColor = prefs.getInt('colors') ?? 1;
    runApp(EasyLocalization(
    supportedLocales: [Locale('en', 'US'), Locale('km')],
    path: 'assets/languages',
    fallbackLocale: Locale('en', "US"),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (context.locale == Locale('km')) {
      currentLang = 'Khmer';
    } else {
      currentLang = 'English';
    }
    
    return MaterialApp(
      title: 'WeExspend',
      theme: themeData,
      initialRoute: HomeSc.routeName,
      routes: routes,
    );
  }
}
