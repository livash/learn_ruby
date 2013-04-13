#############################
# pig-latin traslator
# translate from English to pig-latin
# @author Olena Ivashyna
# @date Apr 11, 2013
#############################

def translate(your_string)
  words = your_string.split(/\s+/)
  vowels = %w{a e i o u}
  th_ch = %q{th ch sh sc qu }
  three_letter = %q{sch}
  translated_words=[]
  words.each do |word|
    letters = word.scan(/\w/)
    word_length = letters.length
    
    if vowels.include?(letters[0])
      #word begins with a vowel
      word += "ay"
      
    elsif  th_ch.include?(letters[0]+letters[1]) && !vowels.include?(letters[2])
      # word begins with three consonants
      word = (letters[3..word_length-1]<<letters[0]<<letters[1]<<letters[2]).join.to_s+"ay"
 
    elsif th_ch.include?(letters[0]+letters[1]) && vowels.include?(letters[2])
      #word begins with two defined consonants followed by a vowel
      word = (letters[2..word_length-1]<<letters[0]<<letters[1]).join.to_s+"ay"
   
    elsif (letters[1]+letters[2]) == "qu"
      # word starts with a <consonant + "qu">
      word = (letters[3..word_length-1]<<letters[0]<<letters[1]<<letters[2]).join.to_s+"ay"
    
    elsif !vowels.include?(letters[0]) && !vowels.include?(letters[1])
      #word begins with two not_defined consonants followed by a vowel
      word = (letters[2..word_length-1]<<letters[0]<<letters[1]).join.to_s+"ay"
    
    else
      # only one consonant begins the word
      word = (letters[1..word_length-1]<<letters[0]).join.to_s+"ay"
    end
    translated_words << word
  end
  translated_words.join(" ").to_s
end
  