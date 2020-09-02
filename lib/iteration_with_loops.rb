def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  row_index = 0
  my_array = []

  while row_index < src.count do
    element_index = 0
    current_minimum = src[row_index][element_index]
    while element_index < src[row_index].count do
      if src[row_index][element_index] < current_minimum
        current_minimum = src[row_index][element_index]
      end
      element_index += 1
    end
    my_array << current_minimum
    row_index += 1
  end
  my_array
end
