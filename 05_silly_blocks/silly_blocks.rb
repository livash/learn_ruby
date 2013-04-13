########################

# @author Olena Ivashyna
# @date April 12, 2013
########################

#reverse input string, or each word in the input string
def reverser(&block)
  words = block.call.scan(/\w+/)
  words.each {|word| word.reverse!}
  words.join(" ").to_s
end

def adder(*args, &block)
  number = block.call
  toRet = 0
  if args.length == 0
    toRet = number + 1
  else
    toRet = number + args[0]
  end
  toRet
end

def repeater(*args, &block)
  if args.length == 0
    block.call
  else
    args[0].times {block.call}
  end  
end

  

  
  