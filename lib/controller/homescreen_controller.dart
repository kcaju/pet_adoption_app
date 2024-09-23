import 'package:flutter/material.dart';
import 'package:pet_adoption_app/dummy_db.dart';
import 'package:pet_adoption_app/model/homescreen/bird_model.dart';
import 'package:pet_adoption_app/model/homescreen/cat_model.dart';
import 'package:pet_adoption_app/model/homescreen/dog_card.dart';
import 'package:pet_adoption_app/model/homescreen/rabbit_model.dart';

class HomescreenController with ChangeNotifier {
  List<Map> dogsCard = DummyDb.dogsCard;
  List<Map> catsCard = DummyDb.catsCrad;
  List<Map> birdCard = DummyDb.birdCard;
  List<Map> rabCard = DummyDb.rabCard;

  List<DogCard> dogObj = [];
  List<CatModel> catObj = [];
  List<BirdModel> birdObj = [];
  List<RabbitModel> rabObj = [];

  convertToMOdel() {
    dogObj = dogsCard
        .map(
          (element) => DogCard(img: element['image'], breed: element['name']),
        )
        .toList();
    catObj = catsCard
        .map(
          (element) => CatModel(img: element['image'], breed: element['name']),
        )
        .toList();

    birdObj = birdCard
        .map(
          (element) => BirdModel(img: element['image'], breed: element['name']),
        )
        .toList();
    rabObj = rabCard
        .map(
          (element) =>
              RabbitModel(img: element['image'], breed: element['name']),
        )
        .toList();
  }
}
