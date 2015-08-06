class Sort
  def sort data
  end

  def test max, num
    data = []
    (1..num).each do
      data << rand(max)
    end
    starttime = Time.new
    result = sort data
    endtime = Time.new
    puts
    puts 'Max: ' + max.to_s + ', Length: ' + num.to_s
    puts 'Time: ' + (endtime - starttime).to_s + 's'
    puts result == data.sort
    puts
  end

  def self.make_data max, num
    data = []
    (1..num).each do
      data << rand(max)
    end
    data
  end
end
