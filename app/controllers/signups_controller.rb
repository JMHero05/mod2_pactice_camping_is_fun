class SignupsController < ApplicationController

  def new
    @signup = Signup.new
    @activities = Activity.all
    @campers = Camper.all
  end

  def create
    @signup = Signup.create(signup_params)
    @activities = Activity.all
    @campers = Camper.all

    if @signup.valid?
      redirect_to camper_path(@signup.camper_id)
    else
      render :new
    end
  end

  private

  def signup_params
    params.require(:signup).permit(:activity_id, :camper_id, :time)
  end

end
