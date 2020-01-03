def map(source_array)
  new_arr = []
  i = 0
  while i < source_array.length do
    new_arr.push(yield(source_array[i]))
    i += 1
  end
  new_arr
end

def reduce(source_array, start = 0)
  i = 0
  total = start
  value = 0
  while i < source_array.length do
    value = yield(source_array[i],value)
    if value == false
      return false
    end
    i += 1
  end
  if value != false && value != true
    value += total
  else
    return value
  end
end
