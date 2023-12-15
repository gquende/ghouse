import 'package:flutter/cupertino.dart';
import 'package:ghouse/models/shopping_list.dart';

import '../core/database.dart';

class ShoppingListRepository {
  final String _table = "shopping_lists";
  final AppDatabase appDatabase;

  ShoppingListRepository({required this.appDatabase});

  //Get all ShoppingList
  Future<List<ShoppingList>> getAllList() async {
    try {
      var list = <ShoppingList>[];
      var result = await this.appDatabase.db?.rawQuery(
        "SELECT * from ${_table}",
        [],
      );
      if (result != null) {
        for (var i = 0; i < result.length; i++) {
          var shopingList = ShoppingList.fromMap(result[i]);
          list.add(shopingList);
        }
      }
      return list;
    } catch (error) {
      debugPrint(
          "USER_REPOSITORY::GetUserByUsernameAndPassword:: Error ${error.toString()} ");
    }

    return <ShoppingList>[];
  }

  Future<int?> create(ShoppingList list) async {
    try {
      var result = await this.appDatabase.db?.insert(_table, list.toMap());
      debugPrint("${result}");
      return result;
    } catch (error) {
      debugPrint("USER_REPOSITORY::Create:: Error ${error.toString()} ");
    }
  }
}
