import 'package:flutter/material.dart';
import 'package:pet_adoption_app/dummy_db.dart';
import 'package:pet_adoption_app/model/germanshepherd_screen/germanshepherd_model.dart';

class GermanshpscreenController with ChangeNotifier {
  List<Map> gsCard = DummyDb.germanShepherd;
  List<GermanshepherdModel> germanObj = [];
  convertModel() {
    germanObj = gsCard
        .map(
          (e) => GermanshepherdModel(name: e['name'], img: e['image']),
        )
        .toList();
  }
}
