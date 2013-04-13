##################################
# my calculator prgram
# @author Olena Ivashyna
# @date April 10, 2012
##################################

def add(param1, param2)
  param1 + param2
end

def subtract(param1, param2)
  param1 - param2
end

def sum(my_array)
  sum=0
  my_array.each {|item| sum+=item}
  sum
end

def multiply(*args)

    product=1
    args.each {|param| product*=param}
    product

end

def power(num, power)
  toRet = num
  (power-1).times {toRet*=num}
  toRet
end

def factorial(num)
  return 1 if num == 0
  return "please, insert positive numbers only" if num < 0
  toRet = 1
  for i in 1..num
    toRet *=i
  end
  toRet
end