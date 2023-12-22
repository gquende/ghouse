import 'package:get_it/get_it.dart';
import 'package:ghouse/core/database.dart';
import 'package:ghouse/repository/shopping_list_repository.dart';

Future<void> initConfig() async {
  var locator = GetIt.instance;

  AppDatabase database = AppDatabase(urlDatabase: "ghouse_db.db");

  locator.registerSingleton(ShoppingListRepository(appDatabase: database));
}
