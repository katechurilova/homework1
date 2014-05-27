module Words
  extend self

  def count(str)
    #str.downcase.split(' ').inject(Hash.new{ 0 }){ |res, x|
    #res[x] += 1
    #res
    #}
    Hash[str.downcase.gsub(/[,-\.?!:;]/,"").split(' ').group_by{|i|i}.map{|x,y| [x, y.length]}]
  end
end
