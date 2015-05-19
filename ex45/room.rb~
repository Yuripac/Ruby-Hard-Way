class Room
  
  def initialize
    @d = Decision.new
  end
    
  def enter; end 
end

# Rooms 

class MorgRoom < Room

  def enter
    puts "Essa é a sala do morg. Para onde você vai?"
    
    @d.add_option "esquerda", "dead"
    @d.add_option "direita", "big_boss"
    @d.show_options
    
    @d.get_input
  end  
end

class BigBossRoom < Room

  def enter
    puts "Esse é seu ultimo teste. Escolha."
    
    @d.add_option "morrer", "dead"
    @d.add_option "vencer", "finish"
    @d.show_options
    
    @d.get_input
  end
end
