module Anagram
  extend self

  def anagrams(str)
    str.downcase.gsub(/[,\.?!:;]/,"").split(' ').group_by{|i| i.chars.sort}.values
  end
end
