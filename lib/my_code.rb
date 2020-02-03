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
  array[0].kind_of?(Integer) != true ? value = array[0] : nil
  while i < array.length do
    value = yield(array[i], value)
    i += 1
  end
  value
end