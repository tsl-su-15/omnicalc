class Stat
  def initialize(string_of_numbers)
    @numbers = string_of_numbers.gsub(',', '').split.map(&:to_f)
  end

  def get_numbers
    return @numbers
  end

  def range
    return get_numbers.max - get_numbers.min
  end

  def median
    return (get_numbers.sort[(get_numbers.length-1)/2] + get_numbers.sort[get_numbers.length/2])/2
  end

  def mean
    return (get_numbers.sum)/(get_numbers.length)
  end

  def variance
    sum_squared_differences = 0
    get_numbers.each do |num|
        sum_squared_differences += (mean - num)**2
    end

    return sum_squared_differences/get_numbers.length
  end

  def std_dev
    return Math.sqrt(variance)
  end
end
