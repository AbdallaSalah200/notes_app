import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  dynamic  title;
  @HiveField(1)
   dynamic  subTitle;
  @HiveField(2)
   final dynamic  date;
  @HiveField(3)
   dynamic  color;

  NoteModel({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.color,
  });
}
