import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:store_app/screens/home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  static String id = "SplashPage";

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: const Column(
        children: [
          SizedBox(
            height: 170,
          ),
          Text(
            'New Trend',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontFamily: 'pacifico',
            ),
          ),

          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "Developed By Mohamed Hussein",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  fontSize: 15),
            ),
          )
        ],
      ),
      nextScreen: const HomePage(),
      splashIconSize: 500,
      backgroundColor: const Color(0xff23272E),
    );
  }
}
