import 'package:flutter/material.dart';
import 'package:pet_adoption_app/utils/color_constants.dart';
import 'package:pet_adoption_app/view/rabbits_list/widget/rabbits_tab.dart';

class RabbitsList extends StatefulWidget {
  const RabbitsList({super.key});

  @override
  State<RabbitsList> createState() => _RabbitsListState();
}

class _RabbitsListState extends State<RabbitsList> {
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
          itemBuilder: (context, index) => RabbitsTab()),
    );
  }
}
