Building my gem:

notes from project review:
scraping should be done in its own class
show class responsible for creating and holding data
scraper gets data passes to show class
cli class displays/interacts with user

1. project structure
2. entry point - file run
3. force that to run CLI
4. stub out interface
5. make things real, real data
6. discover objects
7. program


CLI for popular TV shows, from rotten tomatoes

user types popular-shows
Show a list of high rated TV shows

1. Show 1
2. Show 2
3. Show 3

user types a number to receive show description and tomatoe score of that list item

what is a show?
a show has a name
a show has a critic score
a show has a certified_fresh
a show has a URL
  one level deeper:
  a show has a description
  a show has an audience score
  
  Scraper class:
  
  go to rottentomatoes
  extract the properties
  instantiate a show object
