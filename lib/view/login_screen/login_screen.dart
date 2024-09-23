import 'package:flutter/material.dart';
import 'package:pet_adoption_app/utils/color_constants.dart';
import 'package:pet_adoption_app/utils/image_constants.dart';
import 'package:pet_adoption_app/view/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  late final SharedPreferences loginPrefs;
  @override
  void initState() {
    login();
    super.initState();
  }

  login() async {
    loginPrefs = await SharedPreferences.getInstance();
    bool isLoggedIn = await loginPrefs.getBool('isLoggedIn') ?? false;
    if (isLoggedIn) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => BottomNavScreen(),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Welcome to Pet Haus",
                      style: TextStyle(
                          color: ColorConstants.mainblack,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                    // Image.asset(
                    //   "assets/images/bird.gif",
                    //   height: 100,
                    //   width: 100,
                    // )
                  ],
                ),
                Stack(
                  children: [
                    SizedBox(
                      height: 450,
                      width: 800,
                    ),
                    Positioned(
                      bottom: 32,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        height: 230,
                        width: 400,
                        decoration: BoxDecoration(
                          color: ColorConstants.mainWhite,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextFormField(
                              controller: name,
                              validator: (value) {
                                if (name.text.isNotEmpty) {
                                  return null;
                                } else {
                                  return "Enter your name";
                                }
                              },
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  hintText: "Enter your Name",
                                  label: Text(
                                    "Name",
                                    style: TextStyle(
                                        color: ColorConstants.mainblack
                                            .withOpacity(0.5),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  hintStyle: TextStyle(
                                      color: ColorConstants.grey
                                          .withOpacity(0.5))),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: password,
                              validator: (value) {
                                if (password.text.isNotEmpty &&
                                    value!.length == 10) {
                                  return null;
                                } else {
                                  return "Enter your phone number";
                                }
                              },
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  hintText: "Enter your Phone Number",
                                  label: Text(
                                    "Phone Number",
                                    style: TextStyle(
                                        color: ColorConstants.mainblack
                                            .withOpacity(0.5),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  hintStyle: TextStyle(
                                      color: ColorConstants.grey
                                          .withOpacity(0.5))),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 100,
                      top: 0,
                      child: Image.asset(
                        ImageConstants.DOG,
                        height: 300,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () async {
                    if (formkey.currentState!.validate()) {
                      await loginPrefs.setString('name', name.text);
                      await loginPrefs.setString('password', password.text);
                      await loginPrefs.setBool('isLoggedIn', true);

                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavScreen(),
                          ));
                    } else {
                      print("Not Validated");
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 110),
                    height: 60,
                    width: 350,
                    child: Row(
                      children: [
                        Image.asset(
                          ImageConstants.PAW,
                          height: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Login",
                          style: TextStyle(
                              color: ColorConstants.mainblack,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          ImageConstants.PAW,
                          height: 20,
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: ColorConstants.amber,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
