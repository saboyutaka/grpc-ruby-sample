require_relative './../../lib//hello_services_pb'

class HelloServer < Hello::HelloService::Service
  def hello(hello_req, _unused_call)
    Hello::HelloResponse.new(name: hello_req.name * 2, age: hello_req.age * 2)
  end
end
