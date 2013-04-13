##############################
# @author Olena Ivashyna
# @date April 12, 2013
##############################
class Book
  def intialize
    @title = ""
    @edition = ""
    @author = ""
    @publisher = ""
    
  end
  
  def title=(title)
    @title = title
    temp_title = title.scan(/\w+/)
    exception_words = %q{the and if for of in by is are a an to}
    temp_title.each {|word| word.capitalize! if !exception_words.include?(word)}
    temp_title[0].capitalize!
    @title = temp_title.join(" ").to_s
  end
  
end