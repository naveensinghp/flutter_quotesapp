import 'package:flutter/material.dart';
import 'package:flutter_quotegenerator/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';

class SplashScreen extends StatelessWidget {
List<PageViewModel> getPage(){
  return [
     PageViewModel(
      // image: Image.network('https://images.unsplash.com/photo-1528460033278-a6ba57020470?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGJhY2tncm91bmQlMjBpbWFnZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
      title: "Sfeg",
      bodyWidget: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
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
                  Text('Your new personal',
                  style: headingText1.copyWith(
                      color: lightVioletColor,
                      fontFamily: cred,
                      fontSize: 15.sp,
                    ),
                    textScaleFactor: 1.2,
                    ),
                    Text('Self care companion',
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
         
        ],
      ),
      footer: Text('test'),
     ),
    //  PageViewModel(
    //   image: Image.network('https://images.unsplash.com/photo-1528460033278-a6ba57020470?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGJhY2tncm91bmQlMjBpbWFnZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    //   title: "Test",
    //   body: 'Subscribe TOday',
    //   footer: Text('test'),
    //  ),
  
  ];
}

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        context: context,
        orientation: Orientation.portrait);
    return  Scaffold(
      body: IntroductionScreen(
        done: Text('Done',
            style: TextStyle(
             fontSize: 20.sp,
            fontFamily: cred,
          ),
        ),
        onDone: () {},
        pages: getPage(),
        globalBackgroundColor: violetColor,
        next: const SplashScreen(),
      )
    );
  }

}