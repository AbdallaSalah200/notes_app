import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final dynamic  title;
  @HiveField(1)
  final dynamic  subTitle;
  @HiveField(2)
   final dynamic  date;
  @HiveField(3)
  final dynamic  color;

  NoteModel({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.color,
  });
}
