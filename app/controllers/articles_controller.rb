class ArticlesController < ApplicationController
  before_action :setArticle, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
      @articles = Article.all
  end

  def new
      @article = Article.new
  end

  def edit
  end

  def create
      @article = Article.new(articleParams)
      if @article.save
          flash[:notice] = "Article was created successfully!"
          redirect_to @article
      else
          render 'new'
      end
  end

  def update
      if @article.update(articleParams)
          flash[:notice] = "Article was updated successfully!"
          redirect_to @article
      else
          render 'edit'
      end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def setArticle
      @article = Article.find(params[:id])
  end

  def articleParams
      params.require(:article).permit(:title, :description)
  end

end
