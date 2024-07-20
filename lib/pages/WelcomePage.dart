// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, override_on_non_overriding_member

import 'dart:async';

import 'package:flutter/material.dart';


class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}
PageController mycontroler=PageController();
int Curent=0;
Timer ?_timer;

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    
    super.initState();
    mycontroler.addListener(() {setState(() {
      Curent=mycontroler.page!.round();
    });});
    autoscroll();
  }
  @override
  void autoscroll(){
    _timer=Timer.periodic(Duration(seconds: 5), (timer) {
      Curent=(Curent+1)%5;
      mycontroler.animateToPage(Curent, duration:Duration(milliseconds: 300), curve:Curves.linear);
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Centered content with PageView
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Learning app',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'sfpro',
                    color: Color.fromARGB(255, 245, 245, 245),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 200,
                  child: PageView(
                    controller: mycontroler,
                    children: [
                      Center(
                        child: Text(
                          'Item 1',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Item 2',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Item 3',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Item 4',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Item 5',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5,(index){
                    return Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: index==Curent?const Color.fromARGB(255, 248, 248, 247):Color.fromARGB(136, 72, 72, 72)
                        ),
                      ),
                    );
                  }
                  ),
                ),
                SizedBox(height: 50,),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context,'Signin');
                  },
                  child: Container(
                  width: 250,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 76, 5, 153),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text('Sign In',style: TextStyle(color: Color.fromARGB(255, 185, 185, 185),fontSize: 24),)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
