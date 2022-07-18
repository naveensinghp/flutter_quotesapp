import 'package:flutter/material.dart';
import 'package:flutter_quotegenerator/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        context: context,
        orientation: Orientation.portrait);
    return  Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12)
            ),
            child: pageMenu()),
          
        )
      ),
      backgroundColor: Colors.orangeAccent,
      body: Center(child: Text('Spash Screen',
          style: TextStyle(
          fontSize: 20.sp,
          fontFamily: cred,
          ),
        ),
      ),
    );
  }


  Widget pageMenu(){
    return Padding(
        padding: const EdgeInsets.only(bottom: 0,),
        child: Container(
          height: 60.h,
          width: 320.w,
          decoration: BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Row(
            //  crossAxisAlignment: CrossAxisAlignment.start,
            //  mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Row(
                  children: [
                    Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                          Icon(
                          Icons.home,
                          size: 22.sp,
                          color:const Color(0xFF0a060a),
                        ),
                         SizedBox(height: 5.h,),
                        Text('home',
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: lightfont,
                            fontWeight: FontWeight.normal,
                           
                          ),
                        ),
                      ],
                    ),
                   SizedBox(width: 30.w,),
                    Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                          Icon(
                          Icons.description,
                          size: 22.sp,
                          color:const Color(0xFF0a060a),
                        ),
                        SizedBox(height: 5.h,),
                        Text('To Do',
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: lightfont,
                            fontWeight: FontWeight.normal
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 30.w,),
                    Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                          Icon(
                          Icons.local_police,
                          size: 22.sp,
                          color:const Color(0xFF0a060a),
                        ),
                        SizedBox(height: 5.h,),
                        Text('rewards',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: lightfont,
                            fontWeight: FontWeight.normal
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 50.w,),
                    Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                          Icon(
                          Icons.person_pin,
                          size: 22.sp,
                          color:const Color(0xFF0a060a),
                        ),
                        SizedBox(height: 5.h,),
                        Text('profile',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: lightfont,
                            fontWeight: FontWeight.normal
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
  }

}