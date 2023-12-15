import 'base_model.dart';

class ShopListItem extends BaseModel {
  String listUUID;
  String itemName;
  int qty;
  double price;
  bool isDone;
  String description;
  int priority;

  ShopListItem(
      {required String uuid,
      required this.isDone,
      required this.listUUID,
      required this.itemName,
      required this.description,
      required this.qty,
      required this.price,
      required this.priority,
      int? id,
      String? created_at,
      String? updated_at})
      : super(uuid, id, created_at, updated_at);
}
