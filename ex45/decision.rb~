class Decision
  
  def initialize
    @consequences = {}
    @index = 0
  end
  
  #receives a input and return a consequence
  def get_input
    print "> "
    number_option = $stdin.gets.chomp.to_i
    consequence number_option
  end
  
  #put a new options and consequence
  def add_option option, consequence

    @index += 1
    @consequences[@index] = {option => consequence}
  end
  
  #show all the options
  def show_options 
    
    @consequences.each do | index, value |
      puts "#{index}. #{value.keys.join}"
    end
  end
  
  #erase all the options
  def clear

    @consequences.clear
    @index = 0
  end
  
  def has_not_key_message
    puts "Essa opção não existe. Tente outra vez."
  end
  
  private
  
  #return the consequence
  def consequence number_option
    if @consequences.has_key? number_option
      @consequences[number_option].values.join
    else
      has_not_key_message
      get_input
    end
  end
end
