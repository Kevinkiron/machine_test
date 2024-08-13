import 'package:flutter/material.dart';

class CategoryModel {
  final String title;
  final Color color;
  final String image;

  CategoryModel(
      {required this.title, required this.color, required this.image});
}

List<CategoryModel> categories = [
  CategoryModel(
    title: 'Cleaning',
    color: const Color(0xFFeff3fc),
    image: 'assets/icons/clean.png',
  ),
  CategoryModel(
    title: 'Construction',
    color: const Color(0xFFfff4ed),
    image: 'assets/icons/construction.png',
  ),
  CategoryModel(
    title: 'Painting',
    color: const Color(0xFFfbeffc),
    image: 'assets/icons/painting.png',
  ),
  CategoryModel(
    title: 'Gardening',
    color: const Color(0xFFeefcf7),
    image: 'assets/icons/gardening.png',
  ),
  CategoryModel(
    title: 'Repairing',
    color: const Color(0xFFfefaec),
    image: 'assets/icons/repairing.png',
  ),
];
