# Your Code Here
def map(source_array)
  new_array = []
  i = 0
  while i < source_array.length do
    new_array << yield(source_array[i])
    i += 1
  end
  new_array
end

# map(source_array) { |n| n * -1 }
# map(source_array) { |n| n }
# map(source_array) { |n| n * 2 }
# map(source_array) { |n| n ** 2 }

def reduce(source_array, starting_point = nil)
  if starting_point
    total = starting_point
    i = 0
  else
    total = source_array[0]
    i = 1
  end
  while i < source_array.length do
    total = yield(total, source_array[i])
    i += 1
  end
  total
end

#reduce(source_array){ |memo, n| memo + n }
#reduce(source_array, starting_point){ |memo, n| memo + n }
#reduce(source_array){ |memo, n| memo && n }
#reduce(source_array){ |memo, n| memo || n }