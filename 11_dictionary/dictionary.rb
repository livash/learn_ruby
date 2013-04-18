#####################
# @author Olena Ivashyna
# @date April 14, 2013
#####################

class Dictionary
  
  def initialize
    @entries = Hash.new
  end
  
  def entries
    @entries
  end
  
  def add(input)
    if input.class == Hash
      key = input.keys
      val = input.values
      @entries[key[0]]=val[0]
    elsif input.class == String
      @entries[input] = nil
    end
  end
  
  def keywords
    toRet=[]
    @entries.each { |k,v| toRet << k}
    toRet.sort
  end
  
  def include?(keyword)
    toRet=false
    @entries.each {|k,v| toRet=true if k == keyword}
    toRet
  end
  
  def find(keyword)
    toRet = Hash.new
    @entries.each {|k,v| toRet[k]=v  if k.include?(keyword)}
    toRet
  end
  
  def printable
    toRet = []
    @entries.sort.each {|k,v| toRet << "[#{k}] \"#{v}\""} 
    toRet.join("\n")     
  end
end