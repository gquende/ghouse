import 'package:ghouse/models/base_model.dart';

class Task extends BaseModel {
  String statusUUID;
  String userUUID;
  String taskCategoryUUID;
  String description;

  Task(
      {required String uuid,
      required this.statusUUID,
      required this.userUUID,
      required this.taskCategoryUUID,
      required this.description,
      int? id,
      String? created_at,
      String? updated_at})
      : super(uuid, id, created_at, updated_at);
}
