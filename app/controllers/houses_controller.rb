class HousesController < ApplicationController
  def index
    @houses = House.all
    @supplementary_informations = SupplementaryInformation.all

  end

  def new
    @house = House.new
    2.times {@house.supplementary_informations.build}
  end

  def create
    @house = House.new(house_params)
    if @house.save
      redirect_to houses_path
    else
      render :new
    end
  end

  def edit
    @house = House.find(params[:id])
  end

  def update
    @house = House.find(params[:id])
    if @house.update(update_house_params)
      redirect_to houses_path
    else
      render :edit
    end
  end

  private
  def house_params
    params.require(:house).permit(:property_name, :rent, :address, :age, :remarks,
                                  supplementary_informations_attributes: [:line, :station, :minutes_on_foot])
  end

  def update_house_params
    params.require(:house).permit(:property_name, :rent, :address, :age, :remarks,
                                  supplementary_informations_attributes: [:line, :station, :minutes_on_foot, :_destroy, :id])
  end
end