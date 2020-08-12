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
    # @shows should return an array of all Shows objects with attributes of title, score, and url
    # @shows.each do |show, i|
    #   puts "#{i}. #{show.title}"
    @shows.each do |show|
      puts "#{show.title}"
    end
  end
  
  def more_info
    # 1st attempt
    input = nil
    until input == "exit"
      puts "
      Enter list number for more info about a show, type list for all shows, or type exit:"
      input = gets.strip.downcase
    
      if input.to_i.between?(1,5)
      puts "#{@shows[input.to_i - 1].title} Score: #{@shows[input.to_i - 1].score}, URL: https://www.imdb.com#{@shows[input.to_i - 1].url}, Description: #{@shows[input.to_i - 1].description}"
      elsif input == "list"
        list_shows
      elsif input == "exit"
        break
      else 
        puts "Unknown command, please type valid show number, list, or exit"
      end
    end
  end
    
    # 2nd attempt
  #   input = nil
  #   while input != "exit"
  #     puts "Enter list number for more info about that show, type list for all shows, or type exit:"
  #     input = gets.strip.downcase
      
  #     if input.to_i > 0
  #     show = @shows[input.to_i-1]
  #       puts "#{show.title} score: #{@shows[input.to_i - 1].score}, url: #{@shows[input.to_i - 1].url}"
  #     elsif input == "list"
  #       list_shows
  #     elsif input == "exit"
  #       break
  #     else 
  #       puts "Unknown command, please type valid show number, list, or exit"
  #     end
  #   end
  # end
  
  def goodbye
    puts "Goodbye"
  end
  
end