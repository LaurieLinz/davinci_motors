class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
    render :new
  end

  def create
    @car = Car.new(car_params)
    creation_message = "#{@car.year} #{@car.make} #{@car.model} created"
    if @car.save
      redirect_to cars_path, notice: creation_message
    else
      render :new
    end
  end

  def edit
    @car = Car.find(params[:id])
    # render :edit
  end

  # def destroy
  #   @car.destroy
  #
  # end

  private
  def car_params
    params.require(:car).permit([:year, :make, :model, :price])
  end
end

