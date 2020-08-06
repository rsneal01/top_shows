class TopShows::Shows
  
  
  attr_accessor :name, :critic_score, :certified_fresh, :url
  
  def self.all_shows
    self.scrape_shows
  end
  
  def self.scrape_shows
    shows = []
    shows << self.scrape_rt
  end
    
  def self.scrape_imdb
    doc = Nokogiri::HTML(open("https://www.imdb.com/chart/toptv?pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=4da9d9a5-d299-43f2-9c53-f0efa18182cd&pf_rd_r=3J64KKA7W3EK66X8KA27&pf_rd_s=right-4&pf_rd_t=15506&pf_rd_i=tvmeter&ref_=chttvm_ql_6"))
    
    show_1 = self.new
    show_1.name = doc.css("td.titleColumn").first.text
    show_1.critic_score = 
    show_1.
    show_1.url = 
    
    show_2 = self.new
    show_2.name = "P-Valley: Season 1"
    show_2.critic_score = ""
    show_2. = ""
    show_2.url = ""
    
    [show_1, show_2]
  end
  
end