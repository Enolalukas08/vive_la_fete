class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]

  def index
    @articles = Article.all
    if params[:query].present?
      @articles = @articles.where("name ILIKE ?", "%#{params[:query]}%")
    end
  end

  def new
    @article = Article.new
  end

  def show
    # set_article
    @markers = [
      {
        lng: @article.longitude,
        lat: @article.latitude
      }
    ]
    @booking = Booking.new
    @user = current_user
    @belongs_to_user = article_belongs_to_user?(@article, @user)
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    if @article.save
      puts "Article enregistré !" # Debug output
      redirect_to articles_path, notice: "Publié avec succès !", status: :see_other
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # set_article
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to articles_path, notice: "L'article a été mis à jour avec succès."
    else
      render :edit, status: :unprocessable_entity
    end
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

  def article_belongs_to_user?(article, user)
    article.user == user
  end
end
