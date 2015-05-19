class Engine
  
  def self.run map
    current_room = map.first_room
    
    while true
      next_room_name = current_room.enter
      next_room = map.rooms next_room_name
      current_room = next_room
    end
  end
end
