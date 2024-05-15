# app/controllers/blog_posts_controller.rb
class BlogPostsController < ApplicationController
    def index
      scraping_service = ScrapingService.new
      @blog_posts = scraping_service.scrape_blog_posts
    end
end
  