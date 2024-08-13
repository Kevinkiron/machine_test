import 'package:flutter/material.dart';

class TopServiceModel {
  final String title;
  final Color color;
  final String icon;

  TopServiceModel(
      {required this.title, required this.color, required this.icon});
}

List<TopServiceModel> topServiceList = [
  TopServiceModel(
    title: 'Laptop Service',
    color: const Color(0xFFf1fafa),
    icon: 'assets/icons/laptop.png',
  ),
  TopServiceModel(
    title: 'House Cleaning',
    color: const Color(0xFFeef1fb),
    icon: 'assets/icons/house_cleaning.png',
  ),
  TopServiceModel(
    title: 'AC Service',
    color: const Color(0xFFfef5ee),
    icon: 'assets/icons/ac_service.png',
  ),
  TopServiceModel(
    title: 'Car Wash',
    color: const Color(0xFFf2ecf9),
    icon: 'assets/icons/car_wash.png',
  ),
  TopServiceModel(
    title: 'Painting',
    color: const Color(0xFFf0f5fc),
    icon: 'assets/icons/painting_grid.png',
  ),
  TopServiceModel(
    title: 'Painting',
    color: const Color(0xFFf0f5fc),
    icon: 'assets/icons/painting_grid.png',
  ),
];
