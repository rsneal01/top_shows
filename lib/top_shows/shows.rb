class TopShows::Shows
  
  
  attr_accessor :name, :score, :certified_fresh, :url
  
  def self.all_shows
    self.scrape_shows
  end
  
  def self.scrape_shows
    shows = []
    shows << self.scrape_rt
    shows << self.scrape_imdb
  end
    
  def self.scrape_imdb
    doc = Nokogiri::HTML(open("https://www.imdb.com/chart/toptv?pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=4da9d9a5-d299-43f2-9c53-f0efa18182cd&pf_rd_r=3J64KKA7W3EK66X8KA27&pf_rd_s=right-4&pf_rd_t=15506&pf_rd_i=tvmeter&ref_=chttvm_ql_6"))
    show_title = doc.css("td.titleColumn")
    show_score = doc.css("strong")
    show_url = doc.css("td.titleColumn a")

    
    # assign each show attributes individually?
    
    show_1 = self.new
    show_1.name = show_title.first.text
    # should return: 1. Planet Earth II (2016)
    show_1.score = show_score.first.text
    show_1.
    show_1.url = show_url.first.attr("href")
    
    [show_1, show_2, show_3, show_4, show_5]
    
    
    # or assign with iteration?
    
    scraped_shows_imbd = []
    scraped_show = self.new
    # should this instantiation go insdide our iteration?
    top_five = show_title.first(5)
    top_five.each do |show|
      scraped_show.name = show.text
      scraped_shows_imbd << show
    end
    scraped_shows_imbd
  end
  
    # another iteration attempt 
    
    scraped_show = self.new
    # should this new object go inside our iteration?
    top_five = show_title.first(5)
    top_five.each do |show|
      scraped_show.name = show.text
      scraped_show.critic_score = show
end