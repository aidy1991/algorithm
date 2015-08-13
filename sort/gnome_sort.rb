require './sort.rb'

class GnomeSort < Sort
  def sort d
    data = d.dup
    n = data.length
    i = 1
    until i == n
      if data[i-1] > data[i]
        data[i-1], data[i] = data[i], data[i-1]
        i -= 1 unless i-1 == 0
      else
        i += 1
      end
    end

    data
  end
end

gs = GnomeSort.new
gs.test 1000, 1000
gs.test 1000, 1000
gs.test 1000, 10000
