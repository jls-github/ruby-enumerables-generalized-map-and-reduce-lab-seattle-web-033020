# Your Code Here
def map(array)
  i = 0
  while i < array.length do
    yield(array[i])
    i += 1
  end
  array
end