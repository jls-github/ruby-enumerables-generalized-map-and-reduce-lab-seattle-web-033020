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
    yield(array[i], value)
  end
  value
endc