# our cli controller

class TopShows::CLI
  
  def call 
    list_shows
    more_info
  end
  
  def list_shows
    puts "Top rated TV shows on rotten tomoatoes:"
    puts "1. The Umbrella Academy: Season 1"
    puts "2. P-Valley: Season 1" 
  end
  
  def more_info
    puts "Enter list number for more info about that show or type exit:"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "Description for show #1"
      when "2"
        puts "Description for show #2"
      end
    end
  end
  
end