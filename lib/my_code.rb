# Your Code Here
def map(array)
  i = 0
  while i < array.length do
    array[i] = yield(array[i])
    i += 1
  end
  array
end

def reduce(array, value=0)
  i = 0
  if array[0].kind_of?(Integer) != true 
    if array[0] = true
      value = true
    else
      value = false
    end
  end
  while i < array.length do
    result = yield(array[i], value)
    i += 1
  end
  result
end