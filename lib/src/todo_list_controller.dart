import 'package:grpc/src/server/call.dart';
import 'package:todolist_server/src/generated/todo.pbgrpc.dart';
import 'package:todolist_server/src/repositories/todo_repository.dart';

import 'injection_container.dart';

class TodoListController extends TodoServiceBase {
  final TodoRepository repository = sl();

  TodoListController();

  @override
  Future<TodoItem> create(ServiceCall call, TodoItem request) async {
    final newItem = await repository.add(request);
    return newItem;
  }

  @override
  Future<TodoItems> getAll(ServiceCall call, Void request) async {
    final items = await repository.getAll();
    final response = TodoItems(items: items);
    return response;
  }
}
