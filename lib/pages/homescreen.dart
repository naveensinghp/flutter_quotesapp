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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hi there,',
              style: headingText1.copyWith(
                color: Colors.white,
                fontFamily: cred,
                fontSize: 25.sp,
              ),
              textScaleFactor: 1.0,
          ),
        ],
      ),
    );
  }

}