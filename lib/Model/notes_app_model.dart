import 'package:hive/hive.dart';

part 'notes_app_model.g.dart';

@HiveType(typeId: 0)
class NotesAppModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String content;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final double color;

  NotesAppModel(
      {required this.title,
      required this.content,
      required this.date,
      required this.color});
}
