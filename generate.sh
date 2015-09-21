# !/bin/bash

protoc -I protos --python_out=server --grpc_out=server --plugin=protoc-gen-grpc=`which grpc_python_plugin` protos/helloworld.proto
protoc -I protos --go_out=plugins=grpc:client/helloworld protos/helloworld.proto
