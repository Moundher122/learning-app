// ignore_for_file: deprecated_member_use, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/contreler.dart';
import 'package:provider/provider.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top:10.0,left: 10),
        child: Column(children: [
          Text('Hi ${context.watch<Contr>().email}',style: TextStyle(color:Color.fromARGB(255, 128, 128, 128),fontFamily: 'sfpro',fontSize: 24 ),),
          SizedBox(height: 20,),
          Text('')
        ]),
      ),
    );
  }
}