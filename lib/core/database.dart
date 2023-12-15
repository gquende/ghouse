import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'dart:io';

class AppDatabase {
  final String _userTable = "users";
  final String _inventoryTable = "inventories";
  final String _taskTable = "tasks";
  final String _statusTable = "statuses";
  final String _shoppingListTable = "shopping_lists";
  final String _inventoryLineTable = "inventory_lines";
  final String _listLineTable = "list_lines";
  final String _taskCategoryTable = "task_categories";
  final String _listCategoryTable = "list_categories";
  final String _inventoryCategoryTable = "inventory_categories";
  String urlDatabase;

  Database? db;

  AppDatabase({required this.urlDatabase}) {
    //open(urlDatabase);
  }

  Future<Database?> open(String path) async {
    if (Platform.isWindows || Platform.isLinux) {
      sqfliteFfiInit();
      var databaseFactory = databaseFactoryFfi;
      db = await databaseFactory.openDatabase(inMemoryDatabasePath,
          options: OpenDatabaseOptions(
              version: 1,
              onCreate: (Database db, int version) async {
                await createTables(db, path);
              }));
    } else {
      db = await openDatabase(path, version: 1,
          onCreate: (Database db, int version) async {
        await createTables(db, path);
      });
    }

    return db;
  }

  Future<void> createTables(Database db, String path) async {
    await db.execute('''
              create  table $_userTable( 
              id integer primary key autoincrement, 
              uuid TEXT,
              username TEXT,
              name TEXT,
              surname TEXT,
              password TEXT,
              created_at TEXT,
              updated_at TEXT
              )
        ''');
    await db.execute('''
              create  table $_inventoryTable( 
              id integer primary key autoincrement, 
              uuid TEXT,
              userUUID TEXT,
              inventoryCategoryUUID TEXT,
              description TEXT,
              qty integer,
              price double,
              purchaseDate TEXT,
              expirationDate TEXT,
              consumptionDate TEXT,
              status integer,
              create_at TEXT,
              updated_at TEXT
              )
        ''');

    await db.execute('''
              create  table $_listCategoryTable( 
              id integer primary key autoincrement, 
              uuid TEXT unique,
              name TEXT,
              create_at TEXT,
              updated_at TEXT
              )
        ''');
    await db.execute('''
              create  table $_inventoryCategoryTable( 
              id integer primary key autoincrement, 
              uuid TEXT unique,
              name TEXT,
              create_at TEXT,
              updated_at TEXT
              )
        ''');

    await db.execute('''
              create  table $_shoppingListTable( 
              id integer primary key autoincrement, 
              uuid TEXT unique,
              userUUID TEXT,
              categoryUUID TEXT,
              statusUUID TEXT,
              create_at TEXT,
              updated_at TEXT
              )
        ''');

    await db.execute('''
              create  table $_listLineTable( 
              id integer primary key autoincrement, 
              uuid TEXT unique,
              listUUID TEXT,
              itemName TEXT,
              description TEXT,
              qty integer,
              price double,
              statusUUID TEXT,
              create_at TEXT,
              updated_at TEXT
              )
        ''');

    await db.execute('''
              create  table $_taskCategoryTable( 
              id integer primary key autoincrement, 
              uuid TEXT unique,
              name TEXT,
              create_at TEXT,
              updated_at TEXT
              )
        ''');

    await db.execute('''
              create  table $_statusTable( 
              id integer primary key autoincrement, 
              uuid TEXT unique,
              name TEXT,
              create_at TEXT,
              updated_at TEXT
              )
        ''');

    await db.execute('''
              create  table $_taskTable( 
              id integer primary key autoincrement, 
              uuid TEXT unique,
              taskCategoryUUID TEXT,
              description TEXT,
              create_at TEXT,
              updated_at TEXT
              )
        ''');

    await db.execute('''
              create  table $_inventoryLineTable( 
              id integer primary key autoincrement, 
              uuid TEXT unique,
              inventoryUUID TEXT,
              description TEXT,
              qty integer,
              create_at TEXT,
              updated_at TEXT
              )
        ''');
  }

  Future close() async => db!.close();
}
