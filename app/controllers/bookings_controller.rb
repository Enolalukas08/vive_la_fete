class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
    @article = @booking.article
    # @booking.user = current_user
  end

  def create
    @booking = Booking.new#(booking_params)
    @booking.user = current_user
    @booking.article = Article.find(params[:article_id])
    if @booking.save
      redirect_to booking_path(@booking.id), notice: "Reservé avec succès !"
      #redirect_to articles_path, notice: "Reservé avec succès !"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
