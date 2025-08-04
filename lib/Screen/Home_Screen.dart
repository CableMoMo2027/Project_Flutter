import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:galleria_app/Screen/Profile_Screen.dart';
import '../Constant/app_constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _pageIndex = 0;
  final List<Widget> pages = [
    Center(child: Text("Home Page", style: headingStyle,),),
    Center(child: Text("Search Page", style: headingStyle,),),
    Center(child: Text("Notification Page", style: headingStyle,),),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),

      // body: Text(
      //   'Welcome to Galleria App',
      //   style: headingStyle,
      //   textAlign: TextAlign.center,
      // ),

      body: pages[_pageIndex],

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: primaryColor,
        items: [
          Icon(Icons.home, color: const Color.fromARGB(255, 255, 255, 255), size: 30,),
          Icon(Icons.search, color: const Color.fromARGB(255, 255, 255, 255), size: 30,),
          Icon(Icons.notifications, color: const Color.fromARGB(255, 255, 255, 255), size: 30,),
          Icon(Icons.person, color: const Color.fromARGB(255, 255, 255, 255), size: 30,),
        ],
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
          // Handle navigation bar tap here
        }
        ),
    );
  }
}

  