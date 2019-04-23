class DogsController < ApplicationController

  def new
    @dog = Dog.new
    @dogs = current_user.dogs
  end

  def create
    @dog = Dog.new
    @dog.name = dog_params["name"]
    @dog.date_of_birth = Date.strptime(dog_params['date_of_birth'], '%m/%d/%Y') if dog_params['date_of_birth'] != ""
    @dog.user = current_user
    if @dog.save && current_user.dogs.size == 0
      redirect_to dashboard_schedule_path
    else
      redirect_to dashboard_dogs_path
    end
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.photo = dog_params[:photo]
    if @dog.save
      redirect_to dashboard_dogs_path
    else
      render :new
    end
  end

  private
  def dog_params
    params.require(:dog).permit(:name, :date_of_birth, :photo)
  end

end
