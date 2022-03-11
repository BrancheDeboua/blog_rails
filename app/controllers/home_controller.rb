class HomeController < ApplicationController
  def index
    @articles = Article.all
  end

  def about
  end

  def article
  end
end
