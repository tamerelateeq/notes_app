import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'color_model.g.dart';

@HiveType(typeId: 1)
class ColorModel extends HiveObject {
  @HiveField(0)
  Color color;

  ColorModel({required this.color});
}
