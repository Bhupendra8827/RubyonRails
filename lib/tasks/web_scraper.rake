namespace :web_scraper do
  desc "Scrape data from website"
  task scrape_data: :environment do
    require 'open-uri'
    require 'nokogiri'

    # URL of the website to scrape
    url = 'https://example.com/blog'
    html = URI.open(url)
    doc = Nokogiri::HTML(html)

    # Find all article titles
    article_titles = doc.css('h2.article-title')

    # Print the titles
    article_titles.each do |title|
      puts title.text.strip
    end
  end
end

