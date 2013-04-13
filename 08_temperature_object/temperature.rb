class Temperature
  def initialize(*args)
    if args.length == 1
      @temp = args[0]
      @temp[:c] = ftoc(@temp[:f]) if @temp.include? :f
      @temp[:f] = ctof(@temp[:c]) if @temp.include? :c
    end
  end
  
  def self.from_fahrenheit(temp)
    Temperature.new(:f => temp)
  end
  
  def self.from_celsius(temp)
    Temperature.new(:c => temp)
  end
  
  def in_fahrenheit
    @temp[:f]
  end
  
  def in_celsius
    @temp[:c]
  end
  
  def ftoc(tem)
    (tem-32).to_f * 5 / 9
  end

  def ctof(tem)
      tem.to_f * 9 / 5 + 32
  end
    
end

class Celsius < Temperature
  def initialize(temp)
    @temp = {:c => temp, :f => ctof(temp)}
  end  
end

class Fahrenheit < Temperature
  def initialize(temp)
    @temp = {:f => temp, :c => ftoc(temp)}
  end
end