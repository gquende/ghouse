import 'package:flutter/cupertino.dart';
import 'package:ghouse/repository/shopping_list_repository.dart';

class ShoppingListController {
  TextEditingController nameFieldController = TextEditingController();
  TextEditingController qtyController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  int priority = 1;
  var isLoading = false;

  ShoppingListRepository repository;

  ShoppingListController(this.repository);
}
