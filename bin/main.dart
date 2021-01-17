import 'package:grpc/grpc.dart';
import 'package:todolist_server/src/environment.dart';
import 'package:todolist_server/src/injection_container.dart';
import 'package:todolist_server/src/todo_list_controller.dart';
import 'package:todolist_server/todolist_server.dart' as todolist_server;

void main(List<String> arguments) async {
  final env = Environment();
  print(env.dbURL);
  await Future.delayed(Duration(milliseconds: 200));
  await init(environment: env);
  final server = Server([TodoListController()]);
  await server.serve(port: env.port);
  print('Server listening on port ${env.port}');
}
