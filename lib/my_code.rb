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
  while i < array.length do
    value = yield(array[i], value)
    i += 1
    value == 0 ? value = array[i] : nil
  end
  value
end