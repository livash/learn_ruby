###################################
# three modifications to the class <Array>

# @author Olena Ivashyna
# @date April 15, 2013
###################################

class Array
  def sum
    toRet = 0
    each {|item| toRet += item}
    toRet
  end
  
  def square
    toRet = []    
    each {|item| toRet << item*item}
    toRet
  end
  
  def square!
    return self if self.length == 0
    i = 0
    loop do
      self[i] = self[i] * self[i] 
      i+=1
      break if i==length
    end
    self
  end
end