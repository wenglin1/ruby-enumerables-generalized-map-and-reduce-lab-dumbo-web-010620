def map(source_array)
  new_arr = []
  i = 0
  while i < source_array.length do
    new_arr.push(yield(source_array[row]))
    row += 1
  end
  new_array
end
