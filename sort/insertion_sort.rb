require './sort.rb'

class InsertionSort < Sort
	def sort data
		result = data.dup
		n = result.length
		1.upto(n - 1) do |i|
			tmp = result[i]
			j = i
			while j > 0 and result[j - 1] > tmp
				result[j], result[j - 1] = result[j - 1], result[j]
				j -= 1
			end
		end
		result
	end
end

is = InsertionSort.new
is.test 1000, 1000
is.test 1000, 1000
is.test 1000, 1000
is.test 1000, 1000

