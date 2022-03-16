class HomeController < ApplicationController
  helper_method :if_last
  def index
    if params[:id] and params[:id].to_i >= 0
      @os = params[:id].to_i
      @articles = Article.all.order("created_at DESC").limit(5).offset(@os * 5)
      @previous = true
    else
      @os = 0
      @articles = Article.all.order("created_at DESC").limit(5)
    end

    if @articles.blank? or (params[:id].to_i <= 0 and params[:id] != nil)
      redirect_to root_path
    end

    @next = if_last(@articles)

    @authors = Author.limit(5)
    @is_author = false
    @most_viewed = Article.order(:views).last(3)

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

  def if_last(rows)
    last = Article.order("created_at DESC").last
    rows.each do |row|
      if last.id == row.id
        return false
      end
    end
    return true
  end
end
