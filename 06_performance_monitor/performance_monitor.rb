############################
# @author Olena Ivashyna
# @date April 12, 2013
############################

def measure(*args, &block)
  
  if args.length == 0
    t1 = Time.now
    block.call
    t2 = Time.now
    run_time = t2-t1
  else
    run_times=[]
    args[0].times do 
      t1 = Time.now
      block.call
      t2 = Time.now
      run_times << (t2-t1)
    end
    run_time = 0
    counter = 0
    run_times.each {|time| run_time += time; counter += 1}
    run_time /= counter
  end    
  run_time
end
