require './sort.rb'

class SelectionSort < Sort
  def sort d
    data = d.dup
    n = data.length
    (n - 1).times do |j|
      min_index = j
      (n - j - 1).times do |ii|
        i = ii + (j + 1)
        min_index = i if data[min_index] > data[i]
      end
      data[min_index], data[j] = data[j], data[min_index]
    end
    data
  end
end

ss = SelectionSort.new
ss.test 1000, 1000
ss.test 1000, 1000
ss.test 1000, 10000
