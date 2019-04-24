class PlacesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]

  def index
    @places = Place.paginate(:page => params[:page], :per_page => 5)
  end

  def new
    @places = Place.new
  end

  def create
    current_user.places.create(place_params)
    redirect_to root_path
  end

  def show
    @places = Place.find(params[:id])
  end

  def edit
    @places = Place.find(params[:id])
    
    if @places.user != current_user
      return render plain: 'Not Allowed', status: :forbidden
    end
  end

  def update
    @places = Place.find(params[:id])
    if @places.user != current_user
      return render plain: 'Not Allowed', status: :forbidden
    end
    
    @places.update_attributes(place_params)
    redirect_to root_path 
  end

  def destroy
    @places = Place.find(params[:id])
    @places.destroy
    redirect_to root_path
  end

  private

  def place_params
    params.require(:place).permit(:name, :address, :description)
  end

end  
