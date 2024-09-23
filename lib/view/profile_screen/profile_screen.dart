import 'package:flutter/material.dart';
import 'package:pet_adoption_app/utils/color_constants.dart';
import 'package:pet_adoption_app/utils/image_constants.dart';
import 'package:pet_adoption_app/view/login_screen/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile",
            style: TextStyle(
                color: ColorConstants.mainblack,
                fontSize: 25,
                fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ListTile(
            //   leading: Icon(
            //     Icons.person,
            //     color: ColorConstants.mainblack,
            //   ),
            //   title: Text("My Profile",
            //       style: TextStyle(
            //           color: ColorConstants.mainblack,
            //           fontSize: 20,
            //           fontWeight: FontWeight.bold)),
            // ),
            ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: CircleAvatar(
                radius: 60,
                child: Image.asset(
                  ImageConstants.PROFILE,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: ColorConstants.grey,
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: ColorConstants.mainblack,
              ),
              title: Text("Settings",
                  style: TextStyle(
                      color: ColorConstants.mainblack,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
                color: ColorConstants.mainblack,
              ),
              title: Text("Notifications",
                  style: TextStyle(
                      color: ColorConstants.mainblack,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            ListTile(
              leading: Icon(
                Icons.translate,
                color: ColorConstants.mainblack,
              ),
              title: Text("Language",
                  style: TextStyle(
                      color: ColorConstants.mainblack,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            ListTile(
              leading: Icon(
                Icons.quiz,
                color: ColorConstants.mainblack,
              ),
              title: Text("FAQ",
                  style: TextStyle(
                      color: ColorConstants.mainblack,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            ListTile(
              leading: Icon(
                Icons.error,
                color: ColorConstants.mainblack,
              ),
              title: Text("About App",
                  style: TextStyle(
                      color: ColorConstants.mainblack,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            GestureDetector(
              onTap: () async {
                final SharedPreferences loginPrefs =
                    await SharedPreferences.getInstance();
                await loginPrefs.clear();
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
              },
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: ColorConstants.mainblack,
                ),
                title: Text("Logout",
                    style: TextStyle(
                        color: ColorConstants.mainblack,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
