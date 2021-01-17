import 'package:todolist_server/todolist_server.dart';
import 'package:protobuf/protobuf.dart' as pb;

enum TodoItemField { description, title, id }

extension TodoItemFieldProtobufNames on TodoItem {
  int tagFor(TodoItemField field) => getTagNumber(fieldLabel(field));

  String fieldLabel(TodoItemField field) {
    switch (field) {
      case TodoItemField.description:
        return 'description';
      case TodoItemField.title:
        return 'title';
      case TodoItemField.id:
        return 'id';
    }

    return null;
  }

  String get descriptionNullableValue =>
      getFieldOrNull(tagFor(TodoItemField.description));

  String get idNullableValue => getFieldOrNull(tagFor(TodoItemField.id));
}

extension SafeAccessorProtobuf on pb.GeneratedMessage {}
