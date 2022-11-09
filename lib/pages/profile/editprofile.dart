
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: profilePageBgColor,
      body: Stack(
      children: [
          Positioned(
              top: 120,
              left: 20,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: const<BoxShadow>[
                      BoxShadow(
                        color: Color(0xFFecf1f5),
                        blurRadius: 12,
                      ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: IconButton(
                  iconSize: 18.sp,
                onPressed: () {
                  Navigator.pop(context);
                }, 
                icon: const Icon(Icons.west),
                color: iconColor,
                ),
              )
          ),
          Positioned(
              top: 120,
              right: 10,
              child: Container(
              width: 150.w,
              height: 150.h,
               child: Center(child: Icon(
                    Icons.photo_camera,
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
                  borderRadius: BorderRadius.circular(12.h)
                ),
            ),
          ),
        ],
      ),
    );
  }
}