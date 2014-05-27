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
    net.each do |i| 
    	self.winner(net[i][0], net[i][1])
  	end
  end	
  
end