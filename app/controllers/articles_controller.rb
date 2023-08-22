class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def show
    # set_article
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    if @article.save
      puts "Article saved successfully!" # Debug output
      redirect_to article_path(@article), notice: "Publié avec succès !", status: :see_other
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # set_article
  end

  def update
    @article.update(article_params)
    redirect_to article_path(@article.id)
  end

  def destroy
    # set_article
    @article.destroy
    redirect_to articles_path, status: :see_other
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:name, :description, :price, :photo)
  end
end
