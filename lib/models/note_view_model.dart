import 'package:hive/hive.dart';
part 'note_view_model.g.dart';

@HiveType(typeId: 0)

class NoteViewModel extends HiveObject{
  @HiveType(typeId: 1)
  final String title ;
  @HiveType(typeId: 2)
  final String subtitle;
  @HiveType(typeId: 3)
  final int color ;
  @HiveType(typeId: 4)
  final String date ;

  NoteViewModel({required this.title, required  this.subtitle,required   this.color, required  this.date});

}