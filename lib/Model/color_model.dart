import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
part 'color_model.g.dart';

@HiveType(typeId: 1)
class ColorModel extends HiveObject {
  @HiveField(0)
  double a;
  @HiveField(1)
  double r;
  @HiveField(2)
  double g;
  @HiveField(3)
  double b;
  ColorModel({
    required this.a,
    required this.r,
    required this.g,
    required this.b,
  });

  Color toColor() {
    return Color.fromARGB(
      a.toInt(),
      r.toInt(),
      g.toInt(),
      b.toInt(),
    );
  }
}
