import 'package:flutter/material.dart';
import 'package:flutter_quotegenerator/constant.dart';
import 'package:flutter_quotegenerator/pages/profile/myprofile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';



class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        context: context,
        orientation: Orientation.portrait);
    return  Scaffold(
      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.transparent,
      //   child: footerMenu(context),
      //   elevation: 0,
      // ),
      // bottomNavigationBar: BottomNavigationBar(
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //           icon: SizedBox(
      //             height: 55,
      //             child: Icon(
      //               Ionicons.home_outline,
      //               size: 35,
      //             ),
      //           ),
      //           label: 'Home',
      //           backgroundColor: Colors.white
      //       ),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.search),
      //           label: 'Chats',
      //           backgroundColor: Colors.yellow
      //       ),
      //
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.person),
      //         label: 'Chats',
      //         backgroundColor: Colors.blue,
      //       ),
      //     ],
      //     type: BottomNavigationBarType.shifting,
      //     currentIndex: _selectedIndex,
      //     selectedItemColor: Colors.black,
      //     iconSize: 40,
      //     onTap: _onItemTapped,
      //     elevation: 5
      // ),
      backgroundColor: srShapeColor,
      //   body: Center(child:
      //     Text('H NaveenSingh',
      //     style: TextStyle(
      //     fontSize: 20.sp,
      //     fontFamily: gilroy,
      //     ),
      //   ),
      // ),
      body: footerMenu(context),
    );
  }

  Widget footerMenu(context){
    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.hardEdge,
      children: [
        Positioned(
          bottom: 0,
          child: Container(
            height: 100.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Ionicons.home_outline,
                      size: 25.sp,
                      color: menuNotActive,
                    ),
                    SizedBox(height: 5.h,),
                    Text('home',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.normal,
                          color: menuNotActive
                      ),
                    ),
                  ],
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Ionicons.flash_outline,
                      size: 25.sp,
                      color: Colors.black,
                    ),
                    SizedBox(height: 4.h,),
                    Text('qutoes',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: lightfont,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Container(
                    height: 50.h,
                    width: 55.w,
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(
                      Ionicons.reader_outline,
                      size: 35.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Ionicons.rocket_outline,
                      size: 30.sp,
                      color: menuNotActive,
                    ),
                    SizedBox(height: 5.h,),
                    Text('rewards',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: menuNotActive,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const MyProfile()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Ionicons.bulb_outline,
                        size: 34.sp,
                        color: menuNotActive,
                      ),
                      SizedBox(height: 5.h,),
                      Text('settings',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: lightfont,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // Positioned(
        //   bottom: 50,
        //   left: 150,
        //   child: Container(
        //     height: 70.h,
        //     width: 75.w,
        //     decoration: BoxDecoration(
        //         color: Colors.redAccent,
        //         borderRadius: BorderRadius.circular(30)
        //     ),
        //     child: Icon(
        //       Ionicons.add_outline,
        //       size: 40.sp,
        //       color: Colors.white,
        //     ),
        //   ),
        // ),
      ],
    );
  }

  Widget pageMenu(context){
    return Padding(
        padding: const EdgeInsets.only(bottom: 0,),
        child: Container(
          height: 60.h,
          width: 320.w,
          decoration: BoxDecoration(
            boxShadow: const<BoxShadow>[
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
            ),
          ],
            color: Colors.white,
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
                   SizedBox(width: 20.w,),
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
                        Text('to do',
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: lightfont,
                            fontWeight: FontWeight.normal
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20.w,),
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
                        Text('ewards',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: lightfont,
                            fontWeight: FontWeight.normal
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20.w,),
                    Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                          Icon(
                          Icons.bolt,
                          size: 22.sp,
                          color:const Color(0xFF0a060a),
                        ),
                        SizedBox(height: 5.h,),
                        Text('Qutoes',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: lightfont,
                            fontWeight: FontWeight.normal
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20.w,),
                    InkWell(
                      onTap: (){
                        // print('tapped');
                        Navigator.push(context,MaterialPageRoute(builder: (context) => const MyProfile()));
                      },
                      child: Column(
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