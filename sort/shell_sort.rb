require './sort'

class ShellSort < Sort
  def sort d
    data = d.dup
    h_list = make_h_list data.length

    h_list.reverse_each do |h|
      (0...h).each do |ii|
        i = ii
        loop do
          i += h
          j = i
          break unless i < data.length
          loop do
            if j - h >= 0 and data[j - h] > data[j]
              data[j - h], data[j] = data[j], data[j - h]
              j -= h
            else
              break
            end
          end
        end
      end
    end

    data
  end

  def make_h_list n
    h_list = []
    i = 1
    loop do
      h = (1/2.0) * (3**i - 1)
      if h < n
        h_list << h
        i += 1
      else
        break
      end
    end

    h_list
  end
end

ss = ShellSort.new
ss.test 1000, 1000

