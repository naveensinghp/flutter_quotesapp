import 'package:flutter/material.dart';
import 'package:flutter_quotegenerator/constant.dart';
import 'package:flutter_quotegenerator/pages/home/homepage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


 class MyProfile extends StatelessWidget {
  const MyProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: profilePageBgColor,
      body: Row(
        children: [
           profileAvatar(),
           const Spacer(),
           settings(),
           SizedBox(width: 20.w,),
           closeButton(context),
        ],
      ),
    );
  }

  Widget profileAvatar(){
    return Container(
      width: 190.w,
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

  Widget settings(){
    return Container(
      width: 50.h,
      height: 50.h,
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
      child: Icon(
              Icons.tune,
              size: 25.sp,
              color: buttonIconColor,
            ),
    );
  }
  Widget closeButton(context){
    return Container(
      width: 50.h,
      height: 50.h,
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
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => const HomePageScreen()));
          },
        ),
    );
  }
}