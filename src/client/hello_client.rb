require 'grpc'
require_relative '../../lib/hello_services_pb'

stub = Hello::HelloService::Stub.new('grpc-ruby:5000', :this_channel_is_insecure)
response = stub.hello(Hello::HelloRequest.new(name: 'hogehoge', age: 100))
p response.name
p response.age
