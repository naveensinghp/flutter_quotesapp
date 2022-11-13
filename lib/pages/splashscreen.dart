import 'package:flutter/material.dart';
import 'package:flutter_quotegenerator/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';

class SplashScreen extends StatelessWidget {
List<PageViewModel> getPage(){
  return [
     PageViewModel(
      image: buildImage('assets/images/logoblack.png'),
      title: "Welcome, This App helps your belief on about yourself",
      body: "This App Helps you connect, Worldwide dummy text",
      decoration: getPageDecoration(),
       // bodyWidget: Column(
       //   children: [
       //     buildImage('assets/images/logoblack.png'),
       //   ],
       // )
     ),
    PageViewModel(
      image: buildImage('assets/images/logoblack.png'),
      title: "Welcome, This App helps your belief on about yourself",
      body: "This App Helps you connect, Worldwide dummy text",
      decoration: getPageDecoration(),
    ),
    PageViewModel(
        title: 'Connect With Everyone',
        body: 'Here you can have whatever description you would like to have, you can type it all in here',
        footer: SizedBox(
          height: 45,
          width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                elevation: 8
            ),
            onPressed: () {},
            child: const Text("Let's Go", style: TextStyle(fontSize: 20)),
          ),
        ),
        image: Center(
          child: Image.asset('assets/images/logoblack.png',width: 220,),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            )
        )
    ),
    PageViewModel(
      image: buildImage('assets/images/logoblack.png'),
      title: "Welcome, This App helps your belief on about yourself",
      body: "This App Helps you connect, Worldwide dummy text",
      decoration: getPageDecoration(),
    ),
  ];
}

Widget buildImage(String path){
  return Center(
    child: Image.asset(path,width: 220),
  );
}

PageDecoration getPageDecoration() => PageDecoration(
  titleTextStyle: TextStyle(
    fontSize: 18.sp,
    color: const Color(0xFF545454),
    fontFamily: gilroy,
  ),
  bodyTextStyle: TextStyle(
    fontSize: 14.sp,
    color: const Color(0xFF545454),
    fontFamily: gilroy,
  ),
  titlePadding: EdgeInsets.all(16).copyWith(bottom: 20)
);

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
        onDone: () {
        },
        pages: getPage(),
        globalBackgroundColor: Colors.white,
        // next: const SplashScreen(),
        dotsDecorator: const DotsDecorator(
          size: Size(10,10),
          color: profilePageBgColor,
          activeSize: Size.square(15),
            activeColor: Colors.redAccent
        ),
        showDoneButton: true,
        done: Text('Know More',
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.black,
            fontFamily: gilroy,
          ),
        ),
        next: const Icon(Icons.arrow_forward,size: 20,),
        showSkipButton: true,
        skip: Text('Skip',
        style: TextStyle(
        fontSize: 14.sp,
        color: Colors.black,
        fontFamily: gilroy,
        ),
      ),
      )
    );
  }
  void onDone(){
    // Navigator.pushReplacement(context, newRoute)
  }
}