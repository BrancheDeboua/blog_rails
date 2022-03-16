class HomeController < ApplicationController
  def index
    @authors = Author.all
    @articles = Article.all.order("created_at DESC")
    @is_author = false
    @most_viewed = Article.order(:views).last(3)

    @most_viewed.each do |article|
      p article
    end

    if user_signed_in?
      @authors.each do |author|
        if author.id == current_user.id
          @is_author = true
        end
      end
    end

    
  end

  def about
  end
end
