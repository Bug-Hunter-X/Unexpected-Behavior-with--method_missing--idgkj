```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    # Handle method calls dynamically
    puts "Method '#{method_name}' called with args: #{args.inspect}"
  end
end

my_object = MyClass.new(10)
my_object.non_existent_method(1, 2, 3) # This will call method_missing
my_object.another_method # This will also call method_missing
```