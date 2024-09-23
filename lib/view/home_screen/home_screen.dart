import 'package:flutter/material.dart';
import 'package:pet_adoption_app/utils/color_constants.dart';
import 'package:pet_adoption_app/utils/image_constants.dart';
import 'package:pet_adoption_app/view/home_screen/widgets/birds.dart';
import 'package:pet_adoption_app/view/home_screen/widgets/cats.dart';
import 'package:pet_adoption_app/view/home_screen/widgets/dogs.dart';
import 'package:pet_adoption_app/view/home_screen/widgets/rabbits.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          // leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          centerTitle: true,
          title: Text(
            "Pets Haus",
            style: TextStyle(
                color: ColorConstants.mainblack, fontWeight: FontWeight.bold),
          ),
          actions: [
            Stack(
              children: [
                Icon(
                  Icons.notifications,
                  size: 30,
                ),
                Positioned(
                  right: 3,
                  child: CircleAvatar(
                    radius: 5,
                    child: Text(
                      "0",
                      style: TextStyle(
                          color: ColorConstants.mainWhite, fontSize: 7),
                    ),
                    backgroundColor: ColorConstants.red,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: CircleAvatar(
                radius: 30,
                child: Image.asset(
                  ImageConstants.PROFILE,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text(
              //   "Search for a pet",
              //   style: TextStyle(
              //       color: ColorConstants.mainblack,
              //       fontSize: 30,
              //       fontWeight: FontWeight.bold),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // TextFormField(
              //   decoration: InputDecoration(
              //       contentPadding:
              //           EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              //       hintText: "Search",
              //       hintStyle: TextStyle(color: ColorConstants.mainWhite),
              //       fillColor: ColorConstants.blueGrey,
              //       filled: true,
              //       suffix: Icon(
              //         Icons.tune,
              //         color: ColorConstants.mainWhite,
              //       ),
              //       prefixIcon: Icon(
              //         Icons.search,
              //         color: ColorConstants.mainWhite,
              //       ),
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(30))),
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              Text(
                "Pet Categories",
                style: TextStyle(
                    color: ColorConstants.mainblack,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              TabBar(
                labelColor: ColorConstants.mainblack,
                unselectedLabelColor: ColorConstants.grey,
                tabs: [
                  Tab(
                    text: "Dogs",
                    icon: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 50,
                        child: Image.asset(
                          ImageConstants.dogt,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    text: "Cats",
                    icon: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 50,
                        child: Image.asset(
                          ImageConstants.cat,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    text: "Birds",
                    icon: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 50,
                        child: Image.asset(
                          ImageConstants.BIRD,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    text: "Rabbits",
                    icon: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 50,
                        child: Image.asset(
                          ImageConstants.Rabbits,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: TabBarView(
                      children: [Dogs(), Cats(), Birds(), Rabbits()])),
            ],
          ),
        ),
      ),
    );
  }
}
