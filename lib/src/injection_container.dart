import 'package:get_it/get_it.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:todolist_server/src/repositories/todo_repository.dart';
import 'environment.dart';
import 'package:meta/meta.dart';

GetIt sl = GetIt.instance;
Future<void> init({
  @required Environment environment,
}) async {
  print('Attempting to connect to ${environment.dbURL}');
  final db = Db(environment.dbURL);
  await db.open();
  print('Connected to database');

  sl.registerLazySingleton(() => db);
  sl.registerLazySingleton(() => TodoRepository(db));
  // await db.close();
}
