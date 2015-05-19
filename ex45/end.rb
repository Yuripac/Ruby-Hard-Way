class End
  
  def enter
    puts "Fim."
    exit 0
  end
end

# Final de game. Morreu ou finalizou

class Dead < End
  
  def enter
    puts "Você morreu."
    exit 0  
  end
end

class Finish < End

  def enter
    puts "Você venceu."
    exit 0
  end
end
