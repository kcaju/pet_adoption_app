import 'package:flutter/material.dart';
import 'package:pet_adoption_app/utils/color_constants.dart';
import 'package:pet_adoption_app/utils/image_constants.dart';

class PetSupplies extends StatefulWidget {
  const PetSupplies({super.key});

  @override
  State<PetSupplies> createState() => _PetSuppliesState();
}

class _PetSuppliesState extends State<PetSupplies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "We care your pets",
          style: TextStyle(
              color: ColorConstants.mainblack, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                "Foods & Medicines",
                style: TextStyle(
                    color: ColorConstants.mainblack,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text("data"),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                          height: 10,
                        ),
                    itemCount: 20),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(ImageConstants.care))),
      ),
    );
  }
}
