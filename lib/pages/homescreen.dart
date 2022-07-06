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
            padding: const EdgeInsets.symmetric(vertical: 110),
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
                  SizedBox(height: 20.h,),
                  Text('Your new personal \nSelf-care companion',
                  style: headingText1.copyWith(
                      color: lightVioletColor,
                      fontFamily: cred,
                      fontSize: 15.sp,
                    ),
                    textScaleFactor: 1.2,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 50.h,),
          bottomStuff(),
        ],
      ),
    );
  }

  Widget bottomStuff(){
    return Column(
      children: [
        Container(
          width: 180.h,
          height: 140.h,
          padding: const EdgeInsets.only(bottom: 0,top: 120),
          child: ElevatedButton(
            onPressed: () {},
            child:  Text('HI, REFLECTLY!',
                      style: headingText1.copyWith(
                          color: homebtnTextColor,
                          fontFamily: cred,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                        ),
                        textScaleFactor: 1.2,
                      ),
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35),
              ),
            ),
          ),
        ),
        SizedBox(height: 20.h,),
        Text(
            'I ALREADY HAVE AN ACCOUNT!',
            style: headingText1.copyWith(
             color: lightVioletColor,
            fontFamily: cred,
            fontWeight: FontWeight.w500,
            fontSize: 12.sp,
            ),
            textScaleFactor: 1.2,
          ),
      ],
    );
  } 

}