class ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show edit update destroy ]

  # GET /articles/1 or /articles/1.json
  def show
    @author = Author.find(@article.author_id)
    views = @article.views + 1
    @article.update(views: views)
  end

  # GET /articles/new
  def new
    author = Author.where('users_id = ?', current_user.id)
    unless author.blank?
      @article = Article.new
    else
      redirect_to root_path
    end
  end

  # GET /articles/1/edit
  def edit
    unless current_user.id == @article.author_id
      redirect_to article_url(@article)
    end
  end

  # POST /articles or /articles.json
  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to article_url(@article), notice: "Article was successfully created." }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1 or /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to article_url(@article), notice: "Article was successfully updated." }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1 or /articles/1.json
  def destroy
    if current_user.id == @article.author_id
      @article.destroy

      respond_to do |format|
        format.html { redirect_to root_path, notice: "Article was successfully destroyed." }
        format.json { head :no_content }
      end
    else
      redirect_to root_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:title, :author_id, :article_text, :image_url, :likes)
    end
end
