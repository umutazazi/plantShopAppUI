import 'package:flutter/material.dart';

class Plants {
  String name;
  String image;
  String subText;
  String price;

  Plants(
      {required this.image,
      required this.name,
      required this.subText,
      required this.price,});
}

List<Plants> plantsData = [
  Plants(
      image: 'assets/images/kaktus.jpg',
      name: "Cactus",
      subText: "Best choice for your living room",
      price: "\$30"),
  Plants(
      image: 'assets/images/kaktus.jpg',
      name: "Cactus",
      subText: "Best choice for your living room",
      price: "\$30"),
  Plants(
      image: 'assets/images/kaktus.jpg',
      name: "Cactus",
      subText: "Best choice for your living room",
      price: "\$30"),
  Plants(
      image: 'assets/images/kaktus.jpg',
      name: "Cactus",
      subText: "Best choice for your living room",
      price: "\$30"),
  Plants(
      image: 'assets/images/kaktus.jpg',
      name: "Cactus",
      subText: "Best choice for your living room",
      price: "\$30"),
];
