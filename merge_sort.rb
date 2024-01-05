def merge_sort(arr)
  arr_length = arr.length

  if arr_length < 2
    return arr
  else
    left_arr = merge_sort(arr.slice(0, (arr_length/2)))
    right_arr = merge_sort(arr - left_arr)

    sorted_arr = []

    until left_arr.empty? || right_arr.empty?
      left_arr.first <= right_arr.first ? sorted_arr << left_arr.shift : sorted_arr << right_arr.shift
    end
  end

  sorted_arr + left_arr + right_arr
end
