# app/services/scraping_service.rb
require 'open-uri'

class ScrapingService
  def scrape_blog_posts
    url = 'https://www.codechef.com/users'
    html = URI.open(url).read
    doc = Nokogiri::HTML(html)

    # blog_posts = []

    # doc.css('.post').each do |post|
    #   title = post.at_css('.title').text
    #   content = post.at_css('.content').text

    #   blog_posts << { title: title, content: content }
    # end

    # blog_posts
  end
end
