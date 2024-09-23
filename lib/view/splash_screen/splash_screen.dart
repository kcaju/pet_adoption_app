import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pet_adoption_app/utils/animation_constants.dart';
import 'package:pet_adoption_app/view/get_start_screen/get_start_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => GetStartScreen(),
            ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            Lottie.asset(AnimationConstants.logo, repeat: false, height: 300),
      ),
    );
  }
}
