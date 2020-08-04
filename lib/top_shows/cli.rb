# our cli controller

class TopShows::CLI
  
  def call 
    list_shows
    more_info
    goodbye
  end
  
  def list_shows
    puts "Top rated TV shows on rotten tomoatoes:"
    puts "1. The Umbrella Academy: Season 1"
    puts "2. P-Valley: Season 1" 
  end
  
  def more_info
    input = nil
    while input != "exit"
    puts "Enter list number for more info about that show, type list for all shows, or type exit:"
      input = gets.strip.downcase
      case input
      when "1"
        puts "Description for show #1"
      when "2"
        puts "Description for show #2"
      when "list"
        list_shows
      else 
        puts "Unknown command, please type valid show number, list, or exit"
      end
    end
  end
  
  def goodbye
    puts "Goodbye"
  end
  
end