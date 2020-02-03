# Your Code Here
def map(array)
  array.each do |element|
    yield
  end
  array
end