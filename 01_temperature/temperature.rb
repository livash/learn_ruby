def ftoc(temp)
  (temp-32).to_f * 5 / 9
end

def ctof(temp)
  temp.to_f * 9 / 5 + 32
end
