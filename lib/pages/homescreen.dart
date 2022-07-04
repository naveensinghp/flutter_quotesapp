import 'package:flutter/material.dart';
import 'package:flutter_quotegenerator/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; 



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        context: context,
        orientation: Orientation.portrait);
    return  Scaffold(
      backgroundColor: violetColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                  Icon(
                    Icons.mood,
                    size: 40.sp,
                    color: Colors.white,
                  ),
                  SizedBox(height: 15.h,),
                  Text('Hi there,',
                  style: headingText1.copyWith(
                      color: Colors.white,
                      fontFamily: cred,
                      fontSize: 20.sp,
                    ),
                    textScaleFactor: 1.2,
                  ),
                  Text('I\'m Reflectly,',
                  style: headingText1.copyWith(
                      color: Colors.white,
                      fontFamily: cred,
                      fontSize: 20.sp,
                    ),
                    textScaleFactor: 1.2,
                  ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}