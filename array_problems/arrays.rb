require 'rubygems'
require 'pry-debugger'

module ArrayUtil
  def self.max(array)
    max = array[0]
    for x in array do
      if x > max
        max = x
      end
    end
    max
  end

  def self.middle_element(array)
    if array.length == 0
      nil
    elsif array.length % 2 == 0
      middle = array.length / 2
      average = (array[middle] + array[middle - 1]) / 2.0
      average
    else
      middle = array.length / 2
      array[middle]
    end
  end

  def self.sum_arrays(array1, array2)

  end
end
