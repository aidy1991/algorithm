require './sort.rb'

class ShakerSort < Sort
  def sort d
    data = d.dup
    n = data.length
    left_index = 0
    right_index = n - 1
    loop do
      right_index = bubble data, left_index, right_index, 1
      break unless left_index < right_index

      left_index = bubble data, left_index, right_index, -1
      break unless left_index < right_index
    end

    data
  end

  def bubble data, left, right, direct
    last = (1 + direct) * left / 2 + (1 - direct) * right / 2
    (right - left).times do |j|
      i = (1 + direct) * left / 2 + (1 - direct) * right / 2 + direct * j
      if direct * data[i] > direct * data[i + direct]
        data[i], data[i + direct] = data[i + direct], data[i]
        last = i
      end
    end

    last
  end
end

ss = ShakerSort.new
ss.test 1000, 1000
