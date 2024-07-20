// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/contreler.dart';
import 'package:flutter_application_1/data/theme.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:provider/provider.dart';
class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}
final emailcon=TextEditingController();
final passwordcon=TextEditingController();

class _SignInState extends State<SignIn> {
  final _mykey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _mykey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sign in',style: TextStyle(fontFamily: 'sfpro',fontWeight: FontWeight.w500,fontSize: 30,color: Color.fromARGB(255, 128, 128, 128)),),
                  IconButton(onPressed:() {
                    setState(() {
                      context.read<Themes>().toglle();
                    });
                  }, icon: context.watch<Themes>().isdark?Icon(Icons.dark_mode,color: Color.fromARGB(255, 128, 128, 128),) :Icon(Icons.sunny,color: Color.fromARGB(255, 128, 128, 128),)
                  )
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(top:20,left: 5,right: 5),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(40),
                    boxShadow:List.empty(),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:20.0),
                    child: TextFormField(
                      controller: emailcon,
                      decoration: InputDecoration(border: InputBorder.none,hintText: 'Full name'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15,left: 5,right: 5),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(40),
                    boxShadow:List.empty(),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:20.0),
                    child: TextFormField(   
                      obscureText: true,             
                    controller: passwordcon,
                      decoration: InputDecoration(border: InputBorder.none,hintText: 'Password',),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15,left: 5,right: 5),
                child: GestureDetector(
                  onTap: () {
                    if(emailcon.text.isNotEmpty||passwordcon.text.isNotEmpty){
                    context.read<Contr>().emailpass(emailcon.text, passwordcon.text);
                    Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => HomePage(),));
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('fill your information')));
                    }
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Text('Next',style: TextStyle(color:Color.fromARGB(255, 128, 128, 128),fontSize: 24 ),),),
                  ),
                ),
              ),
              SizedBox(height: 15,),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Divider(
                          thickness:0.5,
                          color: Colors.black,
                          indent: 10,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'OR',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.black,
                          endIndent: 10,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                padding: const EdgeInsets.only(top:15,left: 5,right: 5),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.black)
                  ),
                  child: Center(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/aplle.png'),
                      Text('continue with aplle',style: TextStyle(color:Color.fromARGB(255, 128, 128, 128),fontSize: 16 ),),
                    ],
                  ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15,left: 5,right: 5),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.black)
                  ),
                  child: Center(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/google.png',width: 40,height: 40,),
                      Text('continue with google',style: TextStyle(color:Color.fromARGB(255, 128, 128, 128), ),),
                    ],
                  ),),
                ),
              ),
            ]
            ),
        ),
      ),
    );
  }
}