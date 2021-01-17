# gRPC Todo list server

**Notes**

Dart grpc package is still not null safe.

https://github.com/grpc/grpc-dart/issues/367

## Generate dart files from proto files

```
make generate
```

**Usage**

[bloomrpc](https://github.com/uw-labs/bloomrpc)

## TODO

- [ ] Serve proto files, so clients can easily generate their own files
- [ ] Error handling
- [ ] Authentication (interceptors)
- [ ] Add Proxy for rest clients with openapi docs [grpc-gateway](https://github.com/grpc-ecosystem/grpc-gateway)