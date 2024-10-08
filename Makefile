proto_gen:
#	protoc \
#		--go_out=gen --go_opt=paths=source_relative \
#		--go-grpc_out=gen --go-grpc_opt=paths=source_relative \
#		--proto_path=idl/proto "idl/proto/helloworld.proto"
	buf dep update
	buf generate

docker_build:
	docker build --tag golang.base .

docker_run:
	docker run --publish 50051:50051 golang.base
