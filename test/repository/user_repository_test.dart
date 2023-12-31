import 'package:flutter_test/flutter_test.dart';
import 'package:ghouse/core/database.dart';
import 'package:ghouse/models/users.dart';

import 'package:ghouse/repository/user_repository.dart';

main() {
  UserRepository? repository;

  setUp(() async {
    AppDatabase appDatabase = await AppDatabase(urlDatabase: "app.db");
    await appDatabase.open("app.db");

    repository = UserRepository(appDatabase: appDatabase);
  });

  test("Create User", () async {
    var userId = await repository!.create(User(
        uuid: "124", username: "Ghouse", name: "Ghouse", surname: "GHosue"));

    expect(userId, isNotNull);
  });
}
