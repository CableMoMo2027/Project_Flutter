import 'package:flutter/material.dart';
import 'package:galleria_app/screen/home_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  final List<PageViewModel> pages = [
    PageViewModel(
      title: "Welcome to Galleria",
      body: "Discover and share amazing pins around the world.",
      footer: SizedBox(
        height: 45,
        width: 150,
        child: ElevatedButton(
          onPressed: () {
            // Handle button press
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.cyan,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Text(
            "Let's Get Started",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
      image: Center(
        child: Image.asset(
          'assets/image/intro1.png',
          width: 300,
        ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 16),
        pageColor: Colors.white,
      ),
    ),

    PageViewModel(
      title: "Second Page",
      body: "Welcome to Second Page.",
      footer: SizedBox(
        height: 45,
        width: 150,
        child: ElevatedButton(
          onPressed: () {
            // Handle button press
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.cyan,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Text(
            "Let's Get Started",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
      image: Center(
        child: Image.asset(
          'assets/image/intro1.png',
          width: 300,
        ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 16),
        pageColor: Colors.white,
      ),
    ),

    PageViewModel(
      title: "third Page",
      body: "Welcome to third page.",
      footer: SizedBox(
        height: 45,
        width: 150,
        child: ElevatedButton(
          onPressed: () {
            // Handle button press
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.cyan,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Text(
            "Let's Get Started",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
      image: Center(
        child: Image.asset(
          'assets/image/intro1.png',
          width: 300,
        ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 16),
        pageColor: Colors.white,
      ),
    )
  ];

void onDone(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Introduction Screen"),
        centerTitle: true,
      ),

      body: IntroductionScreen(
        pages: pages,
        dotsDecorator: DotsDecorator(
          size: Size(15, 15),
          color: Colors.blue,
          activeSize: Size(20, 20),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          activeColor: Colors.red,
        ),
        showDoneButton: true,
        done: Text("Done"),

        showSkipButton: true,
        skip: Text("Skip"),

        showNextButton: true,
        next: Icon(Icons.arrow_forward, size: 20,),

        onDone: () => onDone(context),
        curve: Curves.bounceInOut,

      ),
    );
  }
  
}