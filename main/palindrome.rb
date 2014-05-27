module Palindrome
  extend self

  def palindrome?(str)
  	if(str!=nil&&str.downcase.gsub(/\W/,"")==str.downcase.gsub(/\W/,"").reverse&&!str.empty?)
    	return true
    else
    	return false
    end
  end
end
