class List
  include Enumerable

  def initialize *data
    @first = nil
    @last = nil
    data.each do |d|
      self << d
    end
  end

  def << other
    element = Element.new other
    @first = @last = element unless @first
    cons_element element
  end

  def cons_element element
    @last.next = element
    element.prev = @last
    @last = element
  end

  def push_front data
    element = Element.new data
    element.next = @first
    @first.prev = element
    @first = element
  end

  def push_back data
    self << data
  end

  def pop_front
    pop_data = @first.data
    @first = @first.next
    @first.prev = nil
    pop_data
  end

  def pop_back
    pop_data = @last.data
    @last = @last.prev
    @last.next = nil
    pop_data
  end

  def each
    element = @first
    loop do
      yield element.data
      break if element == @last
      element = element.next
    end
  end

  def inspect
    str = ''
    each do |data|
      str += data.to_s
      str += '->'
    end
    str += 'nil'
    str
  end

  class Element
    attr_accessor :next, :prev, :data

    def initialize data
      @data = data
      @next = nil
      @prev = nil
    end
  end
end

l = List.new
l << 1
l << 10
p l
p l.pop_front
p l
l << 19
l << 30
p l
p l.pop_back
p l
l.push_front 100
p l
p l.pop_back
p l
p l.pop_back
p l

puts 'Enumarable test'
l << 1
l << 2
l << 3
p l
p l.map { |data| data * 10 }

