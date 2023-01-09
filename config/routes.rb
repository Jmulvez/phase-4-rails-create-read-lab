Rails.application.routes.draw do
  
  def index
    plants = Plant.all
    render json: plants 
  end

  def show
    plant = Plant.find_by(id: params[:id])
    render json: bird
  end

  def create 
    plant = Plant.create(name: params[:name], image: params[:image], price: params[:price])
    render json: plant
  end

end
