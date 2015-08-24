class MyArray
  include Enumerable

  def initialize *data
    @data = []
    @length = 0
    data.each do |d|
      self << d
    end
  end

  def << other
    @data[@length] = other
    @length += 1
  end

  def + other
    other.each do |d|
      self << d
    end
    self
  end

  def count
    @length
  end

  def size
    count
  end

  def each
    for d in @data
      yield d
    end
  end

  def include? data
    @data.each do |d|
      return true if data == d
    end
    false
  end

  def inspect
    str = "["
    self.each do |d|
      str += d.to_s
      str += ", "
    end
    str += "]"
  end
end

a = MyArray.new 1
b = MyArray.new 10
a << 2
a << 3
p a
b << 20
b << 30
p b
p a + b
p a.include? 10
p a.include? 100
p a.count
p a.size
