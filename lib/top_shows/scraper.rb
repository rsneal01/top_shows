class TopShows::Scraper

  def self.scrape
    self.scrape_imdb
    self.scraped_shows_imdb_description
  end

  def self.scrape_imdb
      doc = Nokogiri::HTML(open("https://www.imdb.com/chart/toptv?pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=4da9d9a5-d299-43f2-9c53-f0efa18182cd&pf_rd_r=3J64KKA7W3EK66X8KA27&pf_rd_s=right-4&pf_rd_t=15506&pf_rd_i=tvmeter&ref_=chttvm_ql_6"))
      show = doc.css("tbody.lister-list tr")
      show_title = doc.css("td.titleColumn")
      show_score = doc.css("strong")
      show_url = show.css("td.titleColumn a").attr("href")
      
      # 1st scrape_imdb iteration attempt
      
      top_five_shows = show.first(5)
      
      scraped_shows_imdb = top_five_shows.each do |show|
        TopShows::Shows.new(show.css("td.titleColumn").text, show.css("strong").text, show.css("td.titleColumn a").attr("href"))
        
        # can we initialize with description attribute and thus have no need for scraped_shows_imdb_description method?
        # self.new(show.css("td.titleColumn").text, show.css("strong").text, show.css("td.titleColumn a").attr("href"), Nokogiri::HTML(open(show.url)).css("div.summary_text").text.strip)
        
      end
      # @@all << scraped_shows_imdb
      # scraped_shows_imdb
    end
    
      
    # def self.scraped_shows_imdb_description(shows)
      # shows.each do |show|
      #   show.description = Nokogiri::HTML(open("https://www.imdb.com#{show.url}")).css("div.summary_text").text.strip
      # end
      
      def self.scraped_shows_imdb_description
        TopShows::Shows.all.each do |show|
          show.description = Nokogiri::HTML(open("https://www.imdb.com#{show.url}")).css("div.summary_text").text.strip
        end
      end
    
  end