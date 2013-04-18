##############################
# RPN = "Reverse Polish Notation" calculator
# See
# * <http://en.wikipedia.org/wiki/Reverse_Polish_notation>
# * <http://www.calculator.org/rpn.aspx>

# @author Olena Ivashyna
# @date April 14, 2013
##############################

class RPNCalculator
  def initialize
    @values = []
  end
  
  def push(number)
    @values << number
  end
  
  def plus
    #puts "we have #{@values.size} numbers on a stack"
    raise "calculator is empty" if @values.size <= 1
    last = @values.size-1
    toRet = @values[last-1].to_f + @values[last].to_f
    temp_values = @values[0..last-2]
    @values = temp_values
    #puts "after plus we have #{@values.size} numbers on a stack"
    @values << toRet.to_f
    #puts "after adding result back to stack we have #{@values.size} numbers on a stack"
  end
  
  def minus
    raise "calculator is empty" if @values.size <= 1
    last = @values.size-1
    toRet = @values[last-1].to_f - @values[last].to_f
    temp_values = @values[0..last-2]
    @values = temp_values
    @values << toRet.to_f
  end
  
  def times
    raise "calculator is empty" if @values.size <= 1
    last = @values.size-1
    toRet = @values[last-1].to_f * @values[last].to_f
    temp_values = @values[0..last-2]
    @values = temp_values
    @values << toRet.to_f
  end
  
  def divide
    raise "calculator is empty" if @values.size <= 1
    last = @values.size-1
    toRet = @values[last-1].to_f / @values[last].to_f
    temp_values = @values[0..last-2]
    @values = temp_values
    @values << toRet.to_f
  end
  
  def value
    raise "calculator is empty" if @values.size == 0
    last = @values.size-1
    @values[last]
  end
  
  def tokens(input_string)
    token_array = input_string.scan(/\S+/)
    operations = %w{+ - * /}
    toRet_array = []
    token_array.each do |item|
      if operations.include?(item)
        toRet_array << item.to_sym
      else
        toRet_array << item.to_i
      end
    end
    toRet_array
  end
    
    
  def evaluate(input_string)
    token_array = tokens(input_string)  
    operations = [:+, :-, :*, :/]
    token_array.each do |item|
        case item
        when :+
          plus
        when :-
          minus
        when :*
          times
        when :/
          divide
        else
          push(item)
        end       
    end
    value        
  end
end
    
    
z = RPNCalculator.new
puts z.evaluate("3 2 2 + *")









