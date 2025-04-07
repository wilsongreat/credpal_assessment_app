import 'package:flutter/material.dart';

class FeaturedMerchantsModel {
  final String name;
  final String logo;
  final Color color;
  final bool isActive;

  FeaturedMerchantsModel({required this.name, required this.logo, required this.color,this.isActive = true, });
}