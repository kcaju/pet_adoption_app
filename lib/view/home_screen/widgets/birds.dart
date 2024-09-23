import 'package:flutter/material.dart';
import 'package:pet_adoption_app/utils/color_constants.dart';
import 'package:pet_adoption_app/view/birds_list/birds_list.dart';

class Birds extends StatefulWidget {
  const Birds({super.key});

  @override
  State<Birds> createState() => _BirdsState();
}

class _BirdsState extends State<Birds> {
  @override
  void initState() {
    // Provider.of<HomescreenController>(context, listen: false).convertToMOdel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // var birdProv = Provider.of<HomescreenController>(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: 300,
                crossAxisCount: 2),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BirdsList(),
                    ));
              },
              child: Container(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 250,
                          decoration: BoxDecoration(
                              // image: DecorationImage(
                              //     fit: BoxFit.cover,
                              //     image: NetworkImage("")),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(50)),
                              color: ColorConstants.blueGrey),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
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
                    Text(
                      "breed",
                      style: TextStyle(
                          color: ColorConstants.mainblack,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: ColorConstants.amber,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
