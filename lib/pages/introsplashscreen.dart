import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class IntroSplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [

          Container(
            padding: EdgeInsets.all(20.0),
            height: 200.h,
            width: 200.w,
            decoration: BoxDecoration(
                color: Colors.redAccent
            ),
          )
        ],
      ),
    );
  }
}
