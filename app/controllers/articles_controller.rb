class ArticlesController < ApplicationController
  before_filter :authorize, only: [:new, :edit, :update]
  
  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(params[:article])
    if @article.save
      redirect_to @article, notice: t('message.article.create')
    else
      render "new"
    end
  end
  
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(params[:article])
      redirect_to @article, notice: t('message.article.update')
    else
      render "edit"
    end
  end
end