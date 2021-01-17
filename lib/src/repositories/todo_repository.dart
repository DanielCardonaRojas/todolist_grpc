import 'package:mongo_dart/mongo_dart.dart';
import 'package:meta/meta.dart';
import 'package:todolist_server/src/generated/todo.pb.dart';
import 'package:uuid/uuid.dart';

class TodoRepository {
  final Db db;
  final DbCollection _collection;

  TodoRepository(this.db) : _collection = db.collection('todolist');

  Future<TodoItem> add(TodoItem item) async {
    try {
      final uuid = Uuid();
      final newId = uuid.v1();

      await _collection.save({
        '_id': newId,
        'id': newId,
        'title': item.title,
        'description': item.description,
      });

      return item..id = newId;
    } catch (error) {
      print(error);
    }
  }

  Future<List<TodoItem>> getAll() async {
    final items = await _collection.find().toList();

    return items
        .map((e) => TodoItem(
              description: e['description'],
              title: e['title'],
              id: e['id'],
            ))
        .toList();
  }
}
