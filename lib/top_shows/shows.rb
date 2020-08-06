class TopShows::Shows
  
  
  attr_accessor :name, :critic_score, :certified_fresh, :url
  
  def self.all_shows
    self.scrape_shows
  end
  
  def self.scrape_shows
    shows = []
    shows << self.scrape_rt
  end
    
  def self.scrape_rt
    doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top-tv"))
    
    show = self.new
    show.name = doc.search()
    show.critic_score = 
    show.certified_fresh = 
    show.url = 
    
    show_2 = self.new
    show_2.name = "P-Valley: Season 1"
    show_2.critic_score = ""
    show_2.certified_fresh = ""
    show_2.url = ""
    
    [show_1, show_2]
  end
  
end