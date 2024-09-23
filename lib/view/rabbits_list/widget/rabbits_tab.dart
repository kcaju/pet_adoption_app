import 'package:flutter/material.dart';
import 'package:pet_adoption_app/utils/color_constants.dart';

class RabbitsTab extends StatelessWidget {
  const RabbitsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage("")),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(50)),
                    color: ColorConstants.blueGrey),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                alignment: Alignment.topRight,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: ColorConstants.mainWhite,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.favorite_outline,
                    color: ColorConstants.red,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                "name",
                style: TextStyle(
                    color: ColorConstants.mainblack,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Icon(
                Icons.male,
                color: ColorConstants.mainblack,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.pin_drop,
                color: ColorConstants.mainblack,
              )
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
          color: ColorConstants.amber, borderRadius: BorderRadius.circular(10)),
    );
  }
}
