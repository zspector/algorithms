module Set1
  def self.swap_small(array)
    if array.length == 1
      array[0]
    end
    for i in 1...array.length
      if array[i] < array[0]
        a = array[0]
        b = array[i]
        array[0] = b
        array[i] = a
      end
    end
    array
  end

  def self.find_sum_2(array, sum = 0)
  end

  def self.find_sum_3(array)
  end
end
