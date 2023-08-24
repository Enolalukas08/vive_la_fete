class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def my_bookings
    @my_bookings = Booking.where(user: current_user)
  end

  def my_articles
    @my_articles = Article.where(user: current_user)
  end
end
