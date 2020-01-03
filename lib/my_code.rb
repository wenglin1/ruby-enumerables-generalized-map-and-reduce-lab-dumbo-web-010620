def map(source_array)
  new_arr = []
  i = 0
  while i < source_array.length do
    new_arr.push(yield(source_array[i]))
    i += 1
  end
  new_arr
end
