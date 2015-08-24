require './sort.rb'

class MergeSort < Sort
  def sort data
    _sort data.dup, 0, data.length
  end

  def _sort data, left, right
    if (right - left) <= 1
      data
    else
      mid = (left + right) / 2
      _sort data, left, mid
      _sort data, mid, right
      merge data, left, right
      data
    end
  end

  def merge data, left, right
    i = left
    mid = (left + right) / 2
    l_data = data[left...mid]
    r_data = data[mid...right]

    until l_data.empty? or r_data.empty? do
      if l_data.first < r_data.first
        data[i] = l_data.shift
      else
        data[i] = r_data.shift
      end
      i += 1
    end

    copy = []
    if l_data.empty?
      copy = r_data
    else
      copy = l_data
    end

    until copy.empty?
      data[i] = copy.shift
      i += 1
    end
  end
end

ms = MergeSort.new
ms.test 1000, 1000
ms.test 1000, 1000
ms.test 1000, 1000
ms.test 1000, 10000
ms.test 1000, 10000
ms.test 1000, 100000

