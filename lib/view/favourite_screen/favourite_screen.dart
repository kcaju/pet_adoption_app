import 'package:flutter/material.dart';
import 'package:pet_adoption_app/utils/color_constants.dart';
import 'package:pet_adoption_app/view/favourite_screen/widget/favourite_card.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainWhite,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "They are waiting for you!!",
          style: TextStyle(
              color: ColorConstants.mainblack, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => FavouriteCard(),
          separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
          itemCount: 12),
    );
  }
}
