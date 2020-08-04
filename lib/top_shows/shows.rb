class TopShows::Shows
  
  attr_accessor :name, :critic_score, :certified_fresh, :url
  
  def self.all
    # returns all instances of shows
    puts "Top rated TV shows on rotten tomoatoes:"
    puts "1. The Umbrella Academy: Season 1"
    puts "2. P-Valley: Season 1" 
    
    show_1 = self.new
    show_1.name = "The Umbrella Academy: Season 1"
    show_1.critic_score = ""
    show_1.certified_fresh = ""
    show_1.url = ""
    
    show_2 = self.new
    show_2.name = "P-Valley: Season 1"
    show_2.critic_score = ""
    show_2.certified_fresh = ""
    show_2.url = ""
    
    [show_1, show_2]
  end
  
end