require './sort.rb'

class HeapSort < Sort
  def sort d
    data = d.dup

    data.each_with_index do |value, index|
      up_heap data, index
    end


    (0...data.length).reverse_each do |i|
      data[0], data[i] = data[i], data[0]
      down_heap data, i
    end

    data
  end

  def up_heap data, n
    while n > 0
      pi = get_parent_index n
      if data[pi] < data[n]
        data[pi], data[n] = data[n], data[pi]
        n = pi
      else
        break
      end
    end
  end

  def down_heap data, n
    i = 0
    tmp = i
    loop do

      left_child_index = get_left_child_index i
      right_child_index = get_right_child_index i

      break unless left_child_index < n
      if data[i] < data[left_child_index]
        tmp = left_child_index
      end

      break unless right_child_index < n
      if data[tmp] < data[right_child_index]
        tmp = right_child_index
      end

      break if tmp == i

      data[i], data[tmp] = data[tmp], data[i]

      i = tmp

    end
  end

  def get_parent_index i
    (i - 1) / 2
  end

  def get_left_child_index i
    i * 2 + 1
  end

  def get_right_child_index i
    i * 2 + 2
  end
end

hs = HeapSort.new
hs.test 1000, 1000
hs.test 1000, 1000
hs.test 1000, 10000
hs.test 1000, 10000
hs.test 1000, 100000
