generate:
	protoc --experimental_allow_proto3_optional --dart_out=grpc:lib/src/generated -Iprotos protos/todo.proto

run:
	dart bin/todolist_server.dart

docker-rebuild:
	docker-compose down
	docker-compose build
	docker-compose up

open-ports:
	lsof -nP -iTCP | grep LISTEN
