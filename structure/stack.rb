require_relative 'list'

class Stack
  def initialize *data
    @stack = List.new(*data)
  end

  def push data
    @stack.push_back data
  end

  def pop
		@stack.pop_back
  end

	def inspect
		@stack.inspect
	end
end

puts ''
puts 'Stack Test'
s = Stack.new 1
s.push 2
s.push 3
p s
p s.pop
p s
p s.pop
p s
