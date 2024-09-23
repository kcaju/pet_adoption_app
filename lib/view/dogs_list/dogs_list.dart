import 'package:flutter/material.dart';
import 'package:pet_adoption_app/utils/color_constants.dart';
import 'package:pet_adoption_app/view/dogs_list/widget/dogs_tab.dart';

class DogsList extends StatefulWidget {
  const DogsList({super.key});

  @override
  State<DogsList> createState() => _DogsListState();
}

class _DogsListState extends State<DogsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Pick your buddy",
          style: TextStyle(
              color: ColorConstants.mainblack, fontWeight: FontWeight.bold),
        ),
      ),
      body: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 15,
              mainAxisExtent: 250),
          itemBuilder: (context, index) => DogsTab()),
    );
  }
}
