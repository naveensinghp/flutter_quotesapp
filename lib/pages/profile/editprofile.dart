
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant.dart';

class EditProfile extends StatelessWidget {
   final ScrollController _controller = ScrollController();
  EditProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: profilePageBgColor,
      body: Stack(
      children: [
          Positioned(
              top: 10,
              left: 0,
              child: SizedBox(
              width: 250.w,
              height: 625.h,
            child: ListView.builder(
              controller: _controller,
              itemCount: 10,
                itemBuilder: (context,i){
                  return Container(
                    height: 50,
                    width: 200,
                    color: Colors.amber[500],
                    child: Center(child: Text('Item $i')),
                  );
                }
                ),
              ),
          ),
          Positioned(
              top: 100,
              left: 25,
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
        ],
      ),
    );
  }

  Widget profileAvatar(){
    return Container(
      width: 150.w,
      height: 130.h,
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
          borderRadius: BorderRadius.circular(20)
        ),
    );
  }
  Widget nameEdit(){
    return Container(
      width: 300.sp,
      height: 100.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: SingleChildScrollView(
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
                  child: Text('aveenSingh',
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
      ),
    
    );
  }
}