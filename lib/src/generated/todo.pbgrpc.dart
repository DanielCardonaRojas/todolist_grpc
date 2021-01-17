///
//  Generated code. Do not modify.
//  source: todo.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'todo.pb.dart' as $0;
export 'todo.pb.dart';

class TodoServiceClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$0.TodoItem, $0.TodoItem>(
      '/TodoService/create',
      ($0.TodoItem value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TodoItem.fromBuffer(value));
  static final _$getAll = $grpc.ClientMethod<$0.Void, $0.TodoItems>(
      '/TodoService/getAll',
      ($0.Void value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TodoItems.fromBuffer(value));

  TodoServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.TodoItem> create($0.TodoItem request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.TodoItems> getAll($0.Void request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getAll, request, options: options);
  }
}

abstract class TodoServiceBase extends $grpc.Service {
  $core.String get $name => 'TodoService';

  TodoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.TodoItem, $0.TodoItem>(
        'create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TodoItem.fromBuffer(value),
        ($0.TodoItem value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Void, $0.TodoItems>(
        'getAll',
        getAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Void.fromBuffer(value),
        ($0.TodoItems value) => value.writeToBuffer()));
  }

  $async.Future<$0.TodoItem> create_Pre(
      $grpc.ServiceCall call, $async.Future<$0.TodoItem> request) async {
    return create(call, await request);
  }

  $async.Future<$0.TodoItems> getAll_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Void> request) async {
    return getAll(call, await request);
  }

  $async.Future<$0.TodoItem> create(
      $grpc.ServiceCall call, $0.TodoItem request);
  $async.Future<$0.TodoItems> getAll($grpc.ServiceCall call, $0.Void request);
}
