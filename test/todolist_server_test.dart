import 'package:todolist_server/src/generated/todo.pb.dart';
import 'package:todolist_server/todolist_server.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

void main() {
  test('optional fields are null', () {
    final todoItemIncomplete =
        TodoItem(id: Uuid().toString(), title: 'Do the work');
    assert(!todoItemIncomplete.hasDescription());
    assert(todoItemIncomplete.description == null);
  });

  test('optional fields are null', () {
    final todoItemIncomplete =
        TodoItem(id: Uuid().toString(), title: 'Do the work');
    final descriptionTag = todoItemIncomplete.getTagNumber('description');
    final nullable = todoItemIncomplete.getFieldOrNull(descriptionTag);
    assert(nullable == null);
  });

  test('can retriet optional set to default value as non null', () {
    final todoItemIncomplete = TodoItem(
      id: Uuid().toString(),
      title: 'Do the work',
      description: '',
    );

    final descriptionTag = todoItemIncomplete.getTagNumber('description');
    final nullable = todoItemIncomplete.getFieldOrNull(descriptionTag);
    assert(nullable != null);
  });

  test('can retriet optional set to default value as non null', () {
    final todoItemIncomplete = TodoItem(
      id: Uuid().toString(),
      title: 'Do the work',
      description: '',
    );

    assert(todoItemIncomplete.descriptionNullableValue != null);
  });
  test('can retriet unset field as null', () {
    final todoItemIncomplete = TodoItem(
      id: Uuid().toString(),
      title: 'Do the work',
    );

    assert(todoItemIncomplete.descriptionNullableValue == null);
  });
}
