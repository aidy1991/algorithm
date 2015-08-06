require './sort.rb'

class BubbleSort < Sort
	def sort data
		res = data.dup
		n = data.length
		(n - 1).times do |j|
			(n - j - 1).times do |i|
				res[i], res[i+1] = res[i+1], res[i] if res[i] > res[i+1]
			end
		end
		res
	end
end

bs = BubbleSort.new
bs.test 1000, 1000
