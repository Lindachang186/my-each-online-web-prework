def my_each(array) # put argument(s) here
  # code here
  i = 0
  while i < array.size
    yield(array[i])
    i += 1
    my_each(array).collect do |item|
      return item
    end
  end
end
