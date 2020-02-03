# Your Code Here
def map(array)
  i = 0
  while i < array.length do
    array[i] = yield(array[i])
    i += 1
  end
  array
end

def reduce(array, value=nil)
  if value
    result = value
    i = 0
  else
    result = array[i]
    i = 1
  end
  while i < array.length do
    result = yield(result, array[i])
    i += 1
  end
  value
end