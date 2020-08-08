class TopShows::Shows
  
  
  attr_accessor :title, :score, :certified_fresh, :url
  
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
    show = doc.css("tbody.lister-list tr")
    show_title = doc.css("td.titleColumn")
    show_score = doc.css("strong")
    show_url = doc.css("td.titleColumn a")
    

    
    # assign each show attributes individually?
    
    show_1 = self.new
    show_1.title = show_title[0].text
    # should return: 1. Planet Earth II (2016)
    show_1.score = show_score[0].text
    show_1.url = show_url[0].attr("href")
    
    show_2 = self.new
    show_2.title = show_title[1].text
    # should return: 1. Planet Earth II (2016)
    show_2.score = show_score[1].text
    show_2.url = show_url[1].attr("href")
    
    show_3 = self.new
    show_3.title = show_title[2].text
    # should return: 1. Planet Earth II (2016)
    show_3.score = show_score[2].text
    show_3.url = show_url[2].attr("href")
    
    show_3 = self.new
    show_3.title = show_title[2].text
    # should return: 1. Planet Earth II (2016)
    show_3.score = show_score[2].text
    show_3.url = show_url[2].attr("href")
    
    show_4 = self.new
    show_4.title = show_title[3].text
    # should return: 1. Planet Earth II (2016)
    show_4.score = show_score[3].text
    show_4.url = show_url[3].attr("href")
    
    show_5 = self.new
    show_5.title = show_title[4].text
    # should return: 1. Planet Earth II (2016)
    show_5.score = show_score[4].text
    show_5.url = show_url[4].attr("href")
    
    scraped_show_array = []
    scraped_show_array << show_1, show_2, show_3, show_4, show_5
    scraped_show_array
    
    
    # 1st scrape_imdb iteration attempt
    
    # should this instantiation go inside our iteration?
    top_five_shows = show.first(5)
    scraped_shows_imbd = []
    
    top_five_shows.each do |show|
       scraped_show = self.new
      # should this be outside of iteration?
       scraped_show.title = show.css("td.titleColumn").text
       scraped_show.score = show.css("strong").text
       scraped_show.url = show.css("td.titleColumn a").attr("href")
       scraped_shows_imbd << scraped_show
     end
     scraped_shows_imbd
   end
       
       
      # 2nd scrape_imdb iteration attempt
      
    top_five_titles = show_title.first(5)
    top_five_scores = show_score.first(5)
    top_five_urls = show_url.first(5)
    
    top_five_titles.each do |title|
      scraped_show.title = title.text
    end
    top_five_scores.each do |score|
      scraped_show.score = score.text
    end
    top_five_urls.each do |url|
      scraped_show.url = url.text
    end
    scraped_shows_imbd
  end
  
end