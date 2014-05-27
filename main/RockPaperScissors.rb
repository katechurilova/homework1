class RockPaperScissors

  class NoSuchStrategyError < Exception
  end

  def self.winner(move1, move2)
 
    @h1=move1[1].to_s.downcase
    @h2=move2[1].to_s.downcase

      if (!@h1=~/[rps]/||!@h2=~/[rps]/)
         raise RockPaperScissors::NoSuchStrategyError.new("Strategy must be one of R,P,S")
      end	
    
      if ((@h1=="p"&&@h2=="r")||(@h1=="s"&&@h2=="p")||(@h1=="r"&&@h2=="s")||(@h1==@h2))
    	   return move1
      else return move2
      end
  end
  
  def self.tournament(net)
    #net.each do |i| 
    #	group[]=winner(winner(i[0][0],i[0][1]),winner(i[1][0],i[1][1]))
  	#end
  	group1=winner(winner(net[0][0][0],net[0][0][1]),winner(net[0][1][0],net[0][1][1]))
  	group2=winner(winner(net[1][0][0],net[1][0][1]),winner(net[1][1][0],net[1][1][1]))
  	winner(grour1,group2)
  end	
end