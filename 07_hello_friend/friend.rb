class Friend
  
  def greeting(*args)
    if args.length == 0
      "Hello!"
    else
      "Hello, #{args[0]}!"
    end
  end
end