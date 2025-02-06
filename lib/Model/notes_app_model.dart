import 'package:hive/hive.dart';
import 'package:notes_app/Model/color_model.dart';

part 'notes_app_model.g.dart';

@HiveType(typeId: 0)
class NotesAppModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String content;
  @HiveField(2)
  final String date;
  @HiveField(3)
  ColorModel color;

  NotesAppModel(
      {required this.title,
      required this.content,
      required this.date,
      required this.color});
}
