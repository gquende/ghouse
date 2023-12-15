import 'package:ghouse/models/base_model.dart';

class TaskCategory extends BaseModel {
  String name;

  TaskCategory(
      {required String uuid,
      required this.name,
      int? id,
      String? created_at,
      String? updated_at})
      : super(uuid, id, created_at, updated_at);
}
