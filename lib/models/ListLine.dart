import 'base_model.dart';

class ListLine extends BaseModel {
  String listUUID;
  String itemName;
  int qty;
  double price;
  String statusUUID;
  String description;

  ListLine(
      {required String uuid,
      required this.statusUUID,
      required this.listUUID,
      required this.itemName,
      required this.description,
      required this.qty,
      required this.price,
      int? id,
      String? created_at,
      String? updated_at})
      : super(uuid, id, created_at, updated_at);
}
