class Map

  def initialize
    @rooms = {
      "morg"      => MorgRoom.new,
      "big_boss"  => BigBossRoom.new,
      "dead"      => Dead.new,
      "finish"    => Finish.new
    }
  end
  
  def rooms name_room
    @rooms[name_room]
  end
  
  def first_room
    MorgRoom.new
  end
end
