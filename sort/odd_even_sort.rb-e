require './sort.rb'

class OddEvenSort < Sort
  def sort data
    res = data.dup
    n = data.length

    flag = true
    while flag do
      flag = false

      [*0...n].each_slice(2) do |i, j|
        break unless j
        if res[i] > res[j]
          res[i], res[j] = res[j], res[i]
          flag = true
        end
      end

      [*1...n].each_slice(2) do |i, j|
        break unless j
        if res[i] > res[j]
          res[i], res[j] = res[j], res[i]
          flag = true
        end
      end
    end

    res
  end
end

bs = OddEvenSort.new
bs.test 1000, 1000
bs.test 1000, 1000

