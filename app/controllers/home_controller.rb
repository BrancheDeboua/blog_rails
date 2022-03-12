class HomeController < ApplicationController
  def index
    @authors = Author.all
    @articles = Article.all.order("created_at DESC")
    @is_author = false

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

  def article
    @article = Article.select("*").where(:id => params[:id])[0]
  end
end
