import 'package:flutter/material.dart';
import 'package:pet_adoption_app/utils/color_constants.dart';
import 'package:pet_adoption_app/utils/image_constants.dart';
import 'package:pet_adoption_app/view/login_screen/login_screen.dart';

class GetStartScreen extends StatelessWidget {
  const GetStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: ColorConstants.yellow,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(ImageConstants.dog1))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Each Pets deserve a home",
              style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontWeight: FontWeight.w700,
                  fontSize: 30),
            ),
            Text(
              "Too many cute pets are waiting for you.",
              style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 35),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  height: 50,
                  width: 450,
                  decoration: BoxDecoration(
                      color: ColorConstants.blueGrey,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
