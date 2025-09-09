import 'package:flutter/cupertino.dart';

class PlatformItem{
  final String name;
  final String description;
  final IconData icon;
  bool isSelected;

  PlatformItem({required this.name,required this.description, required this.icon,this.isSelected = false});
}