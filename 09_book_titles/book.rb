##############################
# this program accepts a book title
# and capitalizes all the necessary words in it
# @author Olena Ivashyna
# @date April 12, 2013
##############################
class Book
  
  def title=(title)
    @title = title
    temp_title = title.scan(/\w+/)
    exception_words = %q{the and if for of in by is are a an to am}
    temp_title.each do |word| 
      word.capitalize! if !exception_words.include?(word)
      word.capitalize! if word == "i"
    end
    temp_title[0].capitalize!
    @title = temp_title.join(" ").to_s
  end
  def title
    @title
  end
  
end

#b = Book.new
#b.title="am i"
#puts b.title