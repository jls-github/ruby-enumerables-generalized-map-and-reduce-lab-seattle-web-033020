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
    i = 0
  else
    value = array[i]
    i = 1
  end
  while i < array.length do
    value = yield(array[i], value)
    i += 1
  end
  value
end