#############################
# working with strings
# @author Olena Ivashyna
# @date Apr 11, 2013
#############################
def echo(your_string)
  your_string
end

def shout(your_string)
  your_string.upcase
end

def repeat(your_string, *args)
  toRet=your_string
  if args.length == 0
    toRet+=(" "+your_string)
  else
    (args[0]-1).times {toRet+=(" "+your_string)}
  end
  toRet
end

def start_of_word(word, *args)
  letters = word.scan(/\w/)
  if args.length ==0
    letters[0]
  elsif args[0]==1
    letters[0]
  else
    letters[0..args[0]-1].join
  end
end

def first_word(my_string)
  words = my_string.split(/\s/)
  words[0]
end

def titleize(my_string)
  exception_words = %q{and in at of the over}
  words = my_string.split(/\s+/).each {|word| word.capitalize! if !exception_words.include?(word)}
  words[0].capitalize!
  if words.length>1
    return words.join(" ")
  end
  words[0]
end