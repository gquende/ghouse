import 'base_model.dart';

class InventoryLine extends BaseModel {
  String inventoryUUID;
  String description;
  int qty;

  InventoryLine(
      {required String uuid,
      required this.inventoryUUID,
      required this.description,
      required this.qty,
      int? id,
      String? created_at,
      String? updated_at})
      : super(uuid, id, created_at, updated_at);
}
