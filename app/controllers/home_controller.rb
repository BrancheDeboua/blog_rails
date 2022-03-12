class HomeController < ApplicationController
  def index
    @authors = Author.all
    p @authors
    @articles = Article.all.order("created_at DESC")
  end

  def about
  end

  def article
    @article = Article.select("*").where(:id => params[:id])[0]
  end
end
