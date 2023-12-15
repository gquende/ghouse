import 'package:ghouse/models/base_model.dart';

import 'list_line.dart';

class ShoppingList extends BaseModel {
  String userUUID;
  String categoryUUID;
  String statusUUID;
  List<ShopListItem> items = [];
  double total;

  ShoppingList(
      {required String uuid,
      required this.userUUID,
      required this.categoryUUID,
      required this.statusUUID,
      required this.total,
      int? id,
      String? created_at,
      String? updated_at})
      : super(uuid, id, created_at, updated_at);

  factory ShoppingList.fromMap(Map<String, dynamic> map) {
    return ShoppingList(
        uuid: map["uuid"],
        userUUID: map["userUUID"],
        categoryUUID: map["categoryUUID"],
        statusUUID: map["statusUUID"],
        total: map["total"]);
  }

  Map<String, dynamic> toMap() {
    return {
      "uuid": this.uuid,
      "id": this.id,
      "userUUID": this.userUUID,
      "categoryUUID": this.categoryUUID,
      "total": this.total,
      "created_at": this.created_at,
      "updated_at": this.updated_at
    };
  }

  calculateTotal() {
    double total = 0;
    this.items.forEach((element) {
      total += element.price;
    });

    return total;
  }
}
