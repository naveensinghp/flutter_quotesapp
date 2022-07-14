import 'package:flutter/material.dart';
import 'package:flutter_quotegenerator/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; 



class ManualSignup extends StatelessWidget {
  const ManualSignup({Key? key}) : super(key: key);


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
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 90),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Icon(
                        Icons.keyboard_backspace,
                        size: 20.sp,
                        color: lightVioletColor,
                      ),
                      const Spacer(),
                      
                      Icon(
                        Icons.mood,
                        size: 42.sp,
                        color: Colors.white,
                      ),
                      const Spacer(),
                  ],
                ),
                SizedBox(height: 15.h,),
                Text('So nice to meet you!, What do',
                  style: headingText1.copyWith(
                      color: Colors.white,
                      fontFamily: cred,
                      fontSize: 15.sp,
                    ),
                    textScaleFactor: 1.2,
                  ),
                Text('your friends call you?',
                style: headingText1.copyWith(
                    color: Colors.white,
                    fontFamily: cred,
                    fontSize: 15.sp,
                  ),
                  textScaleFactor: 1.2,
                ),
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(vertical: 110),
          //   child: Row(
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Column(
          //         children: [
          //         // Icon(
          //         //   Icons.keyboard_backspace,
          //         //   size: 40.sp,
          //         //   color: Colors.white,
          //         // ),
          //         // Icon(
          //         //   Icons.mood,
          //         //   size: 40.sp,
          //         //   color: Colors.white,
          //         // ),
          //         SizedBox(height: 15.h,),
          //         Text('So nice to meet you!, What do',
          //         style: headingText1.copyWith(
          //             color: Colors.white,
          //             fontFamily: cred,
          //             fontSize: 15.sp,
          //           ),
          //           textScaleFactor: 1.2,
          //         ),
          //         Text('your friends call you?',
          //         style: headingText1.copyWith(
          //             color: Colors.white,
          //             fontFamily: cred,
          //             fontSize: 15.sp,
          //           ),
          //           textScaleFactor: 1.2,
          //         ),
          //         SizedBox(height: 20.h,),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
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
            onPressed: () {
              print('clicked');
            },
            child:  Text('Continue',
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
      ],
    );
  } 

}