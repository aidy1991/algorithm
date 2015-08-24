require './sort.rb'

class CombSort < Sort
  def sort data
    res = data.dup
    n = data.length
    h = n * 10 / 13

    loop do
      is_swap = false
      (n-h).times do |i|
        if res[i] > res[i+h]
          res[i], res[i+h] = res[i+h], res[i]
          is_swap = true
        end
      end

      if h == 1
        break unless is_swap
      else
        h = h  * 10 / 13
      end
    end

    res
  end
end

cs = CombSort.new
cs.test 1000, 1000
cs.test 1000, 10000
cs.test 1000, 100000
