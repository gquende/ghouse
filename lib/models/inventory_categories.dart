import 'package:ghouse/models/base_model.dart';

class InventoryCategory extends BaseModel {
  String name;

  InventoryCategory(
      {required String uuid,
      required this.name,
      int? id,
      String? created_at,
      String? updated_at})
      : super(uuid, id, created_at, updated_at);
}
