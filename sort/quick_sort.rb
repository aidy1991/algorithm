require './sort.rb'

class QuickSort < Sort
  def sort data
    result = data.dup
    quick_sort result, 0, result.length - 1
  end

  def quick_sort data, left, right
    if left < right
      l, r = left, right
      p = data[pivot data, left, right]
      loop do
        l += 1 while data[l] < p
        r -= 1 while p < data[r]
        break if l >= r
        data[l], data[r] = data[r], data[l]
        l += 1
        r -= 1
      end

      quick_sort(data, left, l - 1)
      quick_sort(data, r + 1, right)
    end
    data
  end

  def pivot data, left, right
    m = (left + right) / 2
    if data[left] < data[right]
      return left if data[left] > data[m]  
      return right if data[right] < data[m]
    else
      return left if data[left] < data[m]  
      return right if data[right] > data[m]
    end

    m
  end
end

qs = QuickSort.new
#puts qs.sort([1,2,4,1,6,54,7,43,3,34,234,12])
qs.test 1000, 1000
qs.test 1000, 1000
qs.test 1000, 10000
qs.test 1000, 10000
qs.test 1000, 100000
