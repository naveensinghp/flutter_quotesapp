import 'package:flutter/material.dart';
import 'package:flutter_quotegenerator/constant.dart';
import 'package:flutter_quotegenerator/pages/bottommenu.dart';
import 'package:flutter_quotegenerator/pages/home/homepage.dart';
import 'package:flutter_quotegenerator/pages/profile/editprofile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';


 class MyProfile extends StatelessWidget {
  const MyProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: profilePageBgColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child:  profileAvatar(),
          ),
          Positioned(
            top: 70,
            left: 200,
            right: 0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                settings(context),
                 SizedBox(width: 10.w,),
                closeButton(context)
              ],
           ),
          ),
           Positioned(
            top: 150,
            left: 200,
            right: 0,
            bottom: 0,
            child: SingleChildScrollView(
              child: Center(
                child: Text('NaveenSingh',
                        style: headingText1.copyWith(
                          color: Colors.black,
                          fontFamily: gilroy,
                          fontSize: 16.sp,
                        ),
                        textScaleFactor: 1.2,
                      ),
              ),
            ),
          ),
           Positioned(
           top: 0,
           right: 30,
           bottom: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  nameEdit()
              ],
            ),
           ),
           Positioned(
           top: 220,
           right: 30,
            bottom: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  darkModeOptions()
              ],
            ),
           ),
           Positioned(
           top: 470,
           right: 30,
           bottom: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  positiveRemainder()
              ],
            ),
           ),
           Positioned(
           top: 470,
           right: 30,
           bottom: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  positiveRemainder()
              ],
            ),
           ),
           Positioned(
           top: 470,
           right: 30,
           bottom: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  positiveRemainder()
              ],
            ),
           ),
        ],
      ),
    );
    // return Scaffold(
    //   body: CustomScrollView(
    //      slivers: [
    //       SliverFillRemaining(
    //         child: ListView.builder(
    //             itemCount: 1,
    //             itemBuilder: (context,i){
    //               return Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Stack(
    //                     children: [
    //                       Positioned(
    //                         child: closeButton(context)
    //                       )
    //                     ],
    //                   )
    //                 ],
    //               );
    //             },
    //             // separatorBuilder: (context, index) {
    //             //   return const Divider();
    //             // },
    //           ),
    //       )

    //      ]
    //   ),
    // );
  }

Widget test(context){
  return Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child:  profileAvatar(),
          ),
          // Positioned(
          //   top: 70,
          //   left: 200,
          //   right: 0,
          //   child: Row(
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       settings(context),
          //        SizedBox(width: 10.w,),
          //       closeButton(context)
          //     ],
          //  ),
          // ),
          //  Positioned(
          //   top: 150,
          //   left: 200,
          //   right: 0,
          //   bottom: 0,
          //   child: SingleChildScrollView(
          //     child: Center(
          //       child: Text('NaveenSingh',
          //               style: headingText1.copyWith(
          //                 color: Colors.black,
          //                 fontFamily: gilroy,
          //                 fontSize: 16.sp,
          //               ),
          //               textScaleFactor: 1.2,
          //             ),
          //     ),
          //   ),
          // ),
          //  Positioned(
          //  top: 0,
          //  right: 30,
          //  bottom: 100,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //         nameEdit()
          //     ],
          //   ),
          //  ),
          //  Positioned(
          //  top: 450,
          //  right: 30,
          //   bottom: 150,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //         darkModeOptions()
          //     ],
          //   ),
          //  ),
          //  Positioned(
          //  top: 650,
          //  right: 30,
          //  bottom: 110,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //         positiveRemainder()
          //     ],
          //   ),
          //  ),
        ],
      );
}

Widget positiveRemainder(){
    return Container(
      width: 300.sp,
      height: 80.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
             crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                  Icons.notifications_outlined,
                  size: 90.sp,
                  color: Colors.grey[100],
                ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Disabled',
                            style: headingText1.copyWith(
                            color: textColor,
                            fontFamily: gilroy,
                            fontSize: 15.sp,
                            letterSpacing: 0.2,
                          ),
                          textScaleFactor: 1.2,
                        ),
                        SizedBox(height: 5.h,),
                          Text('POSITIVE REMINDERS',
                            style: headingText1.copyWith(
                            color: profileSubHeading,
                            fontFamily: gilroy,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w200,
                          ),
                          textScaleFactor: 1.1,
                        ),
                        ],
                      ),
                      // LiteRollingSwitch(
                      //     value: true,
                      //     textSize: 17.0,
                      //     width: 95,
                      //     textOn: "",
                      //     textOff: "",
                      //     colorOn: Colors.pinkAccent,
                      //     colorOff: Colors.redAccent,
                      //     onTap: (){},
                      //     onSwipe: (){

                      //     },
                      //     onDoubleTap: (){

                      //     },
                      //     onChanged: (bool position) {
                      //       print('test $position');
                      //     },
                      //     iconOn: Icons.dark_mode_outlined,
                      //     iconOff: Icons.alarm_off,
                      //     )
              ],
            ),
          )

          //  Row(
          //    crossAxisAlignment: CrossAxisAlignment.start,
          //    mainAxisAlignment: MainAxisAlignment.start,
          //    children: [
          //               Column(
          //                  crossAxisAlignment: CrossAxisAlignment.start,
          //                  mainAxisAlignment: MainAxisAlignment.center,
          //                 children: [
          //                   Text('Enabled',
          //                     style: headingText1.copyWith(
          //                       color: textColor,
          //                       fontFamily: gilroy,
          //                       fontSize: 15.sp,
          //                       letterSpacing: 0.2,
          //                     ),
          //                     textScaleFactor: 1.2,
          //                   ),
          //                    Text('DARK MODE',
          //                   style: headingText1.copyWith(
          //                   color: profileSubHeading,
          //                   fontFamily: gilroy,
          //                   fontSize: 10.sp,
          //                   fontWeight: FontWeight.w200,
          //                 ),
          //                 textScaleFactor: 1.2,
          //               ),
          //                 ],
          //               ),
          //               const Spacer(),
          //               LiteRollingSwitch(
          //                 value: false,
          //                 textSize: 17.0,
          //                 width: 100,
          //                 textOn: "",
          //                 textOff: "",
          //                 colorOn: Colors.pinkAccent,
          //                 colorOff: Colors.redAccent,
          //                 onTap: (){

          //                 },
          //                 onSwipe: (){

          //                 },
          //                 onDoubleTap: (){

          //                 },
          //                 onChanged: (bool position) {
          //                   print('test $position');
          //                 },
          //                 iconOn: Icons.dark_mode_outlined,
          //                 iconOff: Icons.alarm_off,
          //                 )
          //    ],
          //  ),
        ],
      )
    
    );
  }

  Widget darkModeOptions(){
    return Container(
      width: 300.sp,
      height: 80.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        // boxShadow: const<BoxShadow>[
        //     BoxShadow(
        //       color: Colors.grey,
        //       blurRadius: 5,
        //     ),
        // ],
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
             crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                  Icons.dark_mode_outlined,
                  size: 90.sp,
                  color: Colors.grey[100],
                ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Enabled',
                            style: headingText1.copyWith(
                            color: textColor,
                            fontFamily: gilroy,
                            fontSize: 15.sp,
                            letterSpacing: 0.2,
                          ),
                          textScaleFactor: 1.2,
                        ),
                        SizedBox(height: 5.h,),
                          Text('DARK MODE',
                            style: headingText1.copyWith(
                            color: profileSubHeading,
                            fontFamily: gilroy,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w200,
                          ),
                          textScaleFactor: 1.2,
                        ),
                        ],
                      ),
                      // LiteRollingSwitch(
                      //     value: true,
                      //     textSize: 17.0,
                      //     width: 95,
                      //     textOn: "",
                      //     textOff: "",
                      //     colorOn: Colors.pinkAccent,
                      //     colorOff: Colors.redAccent,
                      //     onTap: (){},
                      //     onSwipe: (){

                      //     },
                      //     onDoubleTap: (){

                      //     },
                      //     onChanged: (bool position) {
                      //       print('test $position');
                      //     },
                      //     iconOn: Icons.dark_mode_outlined,
                      //     iconOff: Icons.alarm_off,
                      //     )
              ],
            ),
          )

          //  Row(
          //    crossAxisAlignment: CrossAxisAlignment.start,
          //    mainAxisAlignment: MainAxisAlignment.start,
          //    children: [
          //               Column(
          //                  crossAxisAlignment: CrossAxisAlignment.start,
          //                  mainAxisAlignment: MainAxisAlignment.center,
          //                 children: [
          //                   Text('Enabled',
          //                     style: headingText1.copyWith(
          //                       color: textColor,
          //                       fontFamily: gilroy,
          //                       fontSize: 15.sp,
          //                       letterSpacing: 0.2,
          //                     ),
          //                     textScaleFactor: 1.2,
          //                   ),
          //                    Text('DARK MODE',
          //                   style: headingText1.copyWith(
          //                   color: profileSubHeading,
          //                   fontFamily: gilroy,
          //                   fontSize: 10.sp,
          //                   fontWeight: FontWeight.w200,
          //                 ),
          //                 textScaleFactor: 1.2,
          //               ),
          //                 ],
          //               ),
          //               const Spacer(),
          //               LiteRollingSwitch(
          //                 value: false,
          //                 textSize: 17.0,
          //                 width: 100,
          //                 textOn: "",
          //                 textOff: "",
          //                 colorOn: Colors.pinkAccent,
          //                 colorOff: Colors.redAccent,
          //                 onTap: (){

          //                 },
          //                 onSwipe: (){

          //                 },
          //                 onDoubleTap: (){

          //                 },
          //                 onChanged: (bool position) {
          //                   print('test $position');
          //                 },
          //                 iconOn: Icons.dark_mode_outlined,
          //                 iconOff: Icons.alarm_off,
          //                 )
          //    ],
          //  ),
        ],
      )
    
    );
  }

  Widget profileAvatar(){
    return Container(
      width: 180.w,
      height: 150.h,
      child: Center(child: Icon(
                    Icons.person,
                    size: 60.sp,
                    color: const Color(0xFF01c0c9),
                  ),
                ),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFF00c6d4),
                  Color(0xFF00dcd3),
            ]
          ),
          color: Colors.green,
          borderRadius: BorderRadius.only(
          topLeft: Radius.zero,
          topRight: Radius.zero,
          bottomLeft: Radius.zero,
          bottomRight: Radius.circular(20.0.h),
          )
        ),
    );
  }

  Widget settings(context){
    return Container(
      width: 42.h,
      height: 42.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const<BoxShadow>[
            BoxShadow(
              color: Color(0xFFecf1f5),
              blurRadius: 12,
            ),
        ],
        borderRadius: BorderRadius.circular(16)
      ),
      child: IconButton(
          icon: const Icon(Icons.tune),
          tooltip: 'Increase volume by 10',
          iconSize: 28,
          color: buttonIconColor,
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => const EditProfile()));
          },
        ),
    );
  }
  Widget closeButton(context){
    return Container(
      width: 42.h,
      height: 42.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const<BoxShadow>[
            BoxShadow(
              color: Color(0xFFecf1f5),
              blurRadius: 12,
            ),
        ],
        borderRadius: BorderRadius.circular(16)
      ),
      child: IconButton(
          icon: const Icon(Icons.close),
          tooltip: 'Increase volume by 10',
          iconSize: 28,
          color: buttonIconColor,
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => const BottomMenu()));
          },
        ),
    );
  }

  Widget nameEdit(){
    return Container(
      width: 300.sp,
      height: 200.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              width: 250.w,
              height: 50.h,
              decoration: BoxDecoration(
                color: const Color(0xFFf6f7f8),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('NaveenSingh',
                  style: headingText1.copyWith(
                      color: const Color(0xFF56617a),
                      fontFamily: gilroy,
                      fontSize: 14.sp,
                    ),
                    textScaleFactor: 1.2,
                  ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              width: 250.w,
              height: 50.h,
              decoration: BoxDecoration(
                color: const Color(0xFFf6f7f8),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('naveensingh.mtp',
                  style: headingText1.copyWith(
                      color: const Color(0xFFafb4bf),
                      fontFamily: gilroy,
                      fontSize: 14.sp,
                    ),
                    textScaleFactor: 1.2,
                  ),
              ),
            ),
          )
        ],
      ),
    
    );
  }
  Widget cardTest(){
      return Container(
        width: 300.sp,
        height: 80.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          children: [
            Text('Reflectly Basic',
                style: headingText1.copyWith(
                    color: const Color(0xFFafb4bf),
                    fontFamily: gilroy,
                    fontSize: 14.sp,
                  ),
                  textScaleFactor: 1.2,
              ),
              const Spacer(),
            Icon(
                Icons.fingerprint,
                size: 100.sp,
                color: const Color(0xFFfafbfb),
              ),
              
          ],
        ),
      );
    }
}