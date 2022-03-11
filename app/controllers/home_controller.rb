class HomeController < ApplicationController
  def index
    @articles = Article.all
  end

  def about
  end

  def article
    @article = Article.select("*").where(:id => params[:id])[0]
  end
end
