########################
# @author Olena Ivashyna
# @date April 14, 2013
#######################

class Timer
  
  def initialize
    @seconds = 0
  end
  
  def seconds=(seconds)
    @seconds = seconds.to_i
  end
  
  def seconds
    @seconds
  end

 def time_string 
   hours = 0 
   min = 0 
   seconds = @seconds
   if seconds>59 
     min = @seconds/60
     seconds = @seconds%60 
     if min>59
       hours = min/60
       min = min - hours*60
     end     
   end 
   padded(hours.to_i) + ":" + padded(min.to_i) + ":" + padded(seconds.to_i) 
 end

  
  def padded(value)
    toRet = ""
    if value < 10
      toRet = "0" + value.to_s
    else
      toRet = value.to_s
    end
    toRet
  end
end

#t=Timer.new
#t.seconds=12
#puts t.time_string