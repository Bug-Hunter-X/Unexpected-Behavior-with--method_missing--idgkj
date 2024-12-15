```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    # Raise a NoMethodError for better error handling
    raise NoMethodError, "Undefined method '#{method_name}' for object of class '#{self.class}'"
  end
end

my_object = MyClass.new(10)
begin
  my_object.non_existent_method(1, 2, 3)
rescue NoMethodError => e
  puts "Error: #{e.message}"
end
```