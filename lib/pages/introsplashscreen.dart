import 'package:flutter/material.dart';
import 'package:flutter_quotegenerator/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';


class IntroSplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'A Reader Lives a thousands lives',
            body: 'The man who never read'
          )
        ],
        done: Text('Done',
          style: TextStyle(
            fontSize: 20.sp,
            color: Colors.white,
            fontFamily: cred,
          ),
        ),
      )
  );
}
