build:
	docker-compose build
	docker-compose run --rm grpc-ruby bundle install

bundle:
	docker-compose run --rm grpc-ruby bundle install

code:
	docker-compose run --rm grpc-ruby bundle exec grpc_tools_ruby_protoc \
	-I /app/protos \
	--ruby_out=/app/lib \
	--grpc_out=/app/lib \
	/app/protos/hello.proto
