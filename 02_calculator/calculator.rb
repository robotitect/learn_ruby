#write your code here

def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(array)
  sum = 0.0
  if(array.length > 0)
    (array.length).times do |i|
      sum += array[i]
    end
  end
  sum
end

def multiply(*args)
  product = 1
  args.length.times do |i|
    product *= args[i]
  end
  product
end

def power(b, x)
  b**x
end

def factorial(n)
  if(n == 0)
    1
  else
    n*factorial(n - 1)
  end
end
