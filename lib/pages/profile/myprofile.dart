import 'package:flutter/material.dart';
import 'package:flutter_quotegenerator/constant.dart';
import 'package:flutter_quotegenerator/pages/bottommenu.dart';
import 'package:flutter_quotegenerator/pages/home/homepage.dart';
import 'package:flutter_quotegenerator/pages/profile/editprofile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


 class MyProfile extends StatelessWidget {
  const MyProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: profilePageBgColor,
      // body: Row(
      //   children: [
      //      Column(
      //        children: [
      //          profileAvatar(),
      //        ],
      //      ),
      //     //  const Spacer(),
      //     //  settings(),
      //     //  SizedBox(width: 10.w,),
      //     //  closeButton(context),
      //     //  SizedBox(width: 20.w,),
         
      //     Column(
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.only(top: 120,left: 50),
      //           child: Row(
      //             children: [
      //                settings(),
      //                SizedBox(width: 10.w,),
      //                closeButton(context),
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
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
           Positioned(
           top: 220,
           right: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  nameEdit()
              ],
            ),
           )
        ],
      ),
      // body: Column(
      //   children: [
      //     Center(child: nameEdit()),
      //     SizedBox(height: 50.h,),
      //     cardTest(),
      //   ],
      // ),
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