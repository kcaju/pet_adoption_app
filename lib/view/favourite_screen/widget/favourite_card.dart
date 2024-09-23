import 'package:flutter/material.dart';
import 'package:pet_adoption_app/utils/color_constants.dart';

class FavouriteCard extends StatelessWidget {
  const FavouriteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorConstants.grey,
      child: ListTile(
        leading: CircleAvatar(
          radius: 40,
          backgroundColor: ColorConstants.amber,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Pet name",
              style: TextStyle(
                  color: ColorConstants.mainblack,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            InkWell(
              onTap: () {},
              child: Icon(
                Icons.heart_broken,
                color: ColorConstants.red,
              ),
            )
          ],
        ),
        subtitle: Text(
          "price",
          style: TextStyle(color: ColorConstants.mainblack, fontSize: 16),
        ),
      ),
    );
  }
}
