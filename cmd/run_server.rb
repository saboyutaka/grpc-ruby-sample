require 'grpc'
require_relative './../src/server/hello_server'

server = GRPC::RpcServer.new
server.add_http2_port('0.0.0.0:5000', :this_port_is_insecure)
server.handle(HelloServer)
server.run_till_terminated
