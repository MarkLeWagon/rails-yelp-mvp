class RestaurantsController < ActionController::Base

def index
  @restaurants = Restaurant.all
end

def show
  @restaurant = Restaurant.find(params[:id])
end

def create
  @restaurant = Restaurant.new(restaurant_params)
  # will go back to the original creation form and higligh the error messages caused by validation rules
  if @restaurant.save
    redirect_to restaurants_path(@restaurant)
  else
    render :new
  end
end

def new
  @restaurant = Restaurant.new
end

def destroy
  @restaurant.delete
end

private

def restaurant_params
  params.require(:restaurant).permit(:name, :address, :category, :phone_number)
end

end
