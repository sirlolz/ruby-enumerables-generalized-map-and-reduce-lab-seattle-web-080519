def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
   new << yield(source_array[i]) # <== Unique work
    i += 1
  end
  return new
end

def reduce(source_array, starting_point = 0)
  total = starting_point
  count = 0
  
  while count < source_array.length
    if source_array[count].class == Fixnum
      total += source_array[count]
    
    elsif source_array[count]
      total = true
    else
      total = false
    end
      count += 1
  end
  total
end