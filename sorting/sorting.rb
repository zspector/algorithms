require 'pry-debugger'

module Sort
  # O(n^2)
  def self.selection_sort(array)
    min_loc = 0
    i = 0
    j = i + 1
    for i in i...array.length
      for j in i...array.length
        if array[i] > array[j]
          min_loc = j
          array[i], array[j] = array[j], array[i]
        end
      end
    end
    array
  end

  def self.merge(array1, array2)
    new_array = []
    i = 0
    j = 0

    while new_array.length < (array1.length + array2.length)
      if array1[i] == nil
        new_array += array2[j..-1]
      elsif array2[j] == nil
        new_array += array1[i..-1]
      elsif array1[i] < array2[j]
        new_array << array1[i]
        i += 1
      else
        new_array << array2[j]
        j += 1
      end
    end
    new_array
  end

  def self.mergesort(array)
    return array if array.length <= 1
    # find and set left_half and right_half of array
    break_point = array.length / 2
    left_half = array[0...break_point]
    right_half = array[break_point..-1]
    # sort the left half
    left_half = mergesort(left_half)
    # sort the right half
    right_half = mergesort(right_half)
    # merge the two halves and return
    merge(left_half, right_half)
  end

end
# Sort.merge([1,3,5,7],[2,4,6,8])
