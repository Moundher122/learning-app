// ignore_for_file: prefer_const_constructors, use_full_hex_values_for_flutter_colors, prefer_const_literals_to_create_immutables

import'package:flutter/material.dart';
import 'package:flutter_application_1/data/contreler.dart';
import 'package:flutter_application_1/data/theme.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:flutter_application_1/pages/SignInpage.dart';
import 'pages/WelcomePage.dart';
import'package:provider/provider.dart';
void main() {
  runApp(MultiProvider(providers: [ChangeNotifierProvider(create:(context) => Themes(),),ChangeNotifierProvider(create:(context) => Contr(),)],child: MyApp()));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        'Home':(context) => HomePage(),
        'Signin':(context) => SignIn(),
      },
      theme: context.watch<Themes>().isdark?darcktheme:lighttheme,
      home: WelcomePage(

      ),
    );
  }
}
ThemeData lighttheme=ThemeData(
backgroundColor:Color.fromARGB(255, 245, 245, 245),
primaryColor: Color.fromARGB(255, 217, 184, 243),
secondaryHeaderColor: Color.fromARGB(225, 255, 255, 0),
highlightColor: Color.fromARGB(255, 128, 128, 128),
);
ThemeData darcktheme=ThemeData(
backgroundColor:Color.fromARGB(255, 41, 40, 45),
primaryColor: Color.fromARGB(255, 69, 89, 200),
secondaryHeaderColor: Color.fromARGB(255, 238, 95, 55),
highlightColor: Color.fromARGB(255, 128, 128, 128),
);

