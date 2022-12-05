 import 'package:flutter/material.dart';
import 'package:flutter_quotegenerator/pages/bottommenu.dart';
import 'package:flutter_quotegenerator/pages/home/homepage.dart';
import 'package:flutter_quotegenerator/pages/introsplashscreen.dart';
import 'package:flutter_quotegenerator/pages/profile/myprofile.dart';
import 'package:flutter_quotegenerator/pages/splashscreen.dart';
import 'dart:developer' as devtools show log;

extension Log on Object{
  void log() => devtools.log(toString());
}

enum Type {cat,dog}

abstract class canRun{
  final Type type;
  const canRun({required this.type});
  //  String get type {
  //   if(this is Cat){
  //     return 'Cat';
  //   }else if(this is Dogs){
  //     return 'Dogs';
  //   }else{
  //     return 'Something else';
  //   }
  // }
  @mustCallSuper
  void run(){
    "CanRun Run function".log();
  }
 
}



class Cat extends canRun{
  const Cat() : super(type: Type.cat);
  @override
  void run() {
    // TODO: implement run
    super.run();
    'cat running'.log();
  }

}

class Dogs extends canRun{
  const Dogs() : super(type: Type.cat);
}

void testIt(){
  'testit'.log();
  const cat = Cat();
  // cat.run();
  cat.type.log();
  const dog = Dogs();
  dog.type.log();
}


void main() {
  'hello'.log();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     //testIt();
    return MaterialApp(
      debugShowCheckedModeBanner : false,
      title: 'NaveenSingh',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomMenu(),
       //home: const SplashScreen()
    );
  }
}


