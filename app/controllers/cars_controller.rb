# frozen_string_literal: true

class CarsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_car, only: %i[show edit update destroy]

  def index
    @cars = Car.all
  end

  def show; end

  def new
    @car = Car.new
  end

  def edit; end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to @car, notice: 'Car was successfully created.'
    else
      render :new
    end
  end

  def update
    if @car.update(car_params)
      redirect_to @car, notice: 'Car was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @car.destroy
    redirect_to cars_url, notice: 'Car was successfully destroyed.'
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:serial_number, :kind, :bottom_seats,
                                :top_seats, :side_bottom_seats, :side_top_seats, :train_id)
  end
end
