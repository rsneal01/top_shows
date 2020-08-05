# our cli controller

class TopShows::CLI
  
  def call 
    list_shows
    more_info
    goodbye
  end
  
  def list_shows
    puts "Current top rated shows:"
    @shows = TopShows::Shows.all
    @shows.each_with_index do |show, i|
      puts "#{i}. #{show.name}"
    end
  end
  
  def more_info
    input = nil
    while input != "exit"
      puts "Enter list number for more info about that show, type list for all shows, or type exit:"
      input = gets.strip.downcase
      
      if input.to_i > 0
      show = @shows[input.to_i-1]
        puts "#{show.name}"
      elsif input == "list"
        list_deals
      else 
        puts "Unknown command, please type valid show number, list, or exit"
      end
    end
  end
  
  def goodbye
    puts "Goodbye"
  end
  
end