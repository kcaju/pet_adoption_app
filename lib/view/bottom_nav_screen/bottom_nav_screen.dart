import 'package:flutter/material.dart';
import 'package:pet_adoption_app/utils/color_constants.dart';
import 'package:pet_adoption_app/view/favourite_screen/favourite_screen.dart';
import 'package:pet_adoption_app/view/home_screen/home_screen.dart';
import 'package:pet_adoption_app/view/pet_supplies/pet_supplies.dart';
import 'package:pet_adoption_app/view/profile_screen/profile_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex = 0;
  final List<Widget> screens = [
    HomeScreen(),
    FavouriteScreen(),
    PetSupplies(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorConstants.blueGrey,
          selectedItemColor: ColorConstants.mainblack,
          unselectedLabelStyle: TextStyle(fontSize: 14),
          selectedLabelStyle: TextStyle(fontSize: 14),
          unselectedItemColor: ColorConstants.grey,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  size: 30,
                ),
                label: "Favourites"),
            // BottomNavigationBarItem(
            //     icon: Icon(
            //       Icons.sms,
            //     ),
            //     label: "chat"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.medical_services,
                  size: 30,
                ),
                label: "Pet Supplies"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.people,
                  size: 30,
                ),
                label: "Profile"),
          ]),
    );
  }
}
