require_relative '/bubble_sort'
require_relative '/shaker_sort'

b = BubbleSort.new
s = ShakerSort.new

data = [10,5,11,12,13]

p "----"
b.sort data
s.sort data
