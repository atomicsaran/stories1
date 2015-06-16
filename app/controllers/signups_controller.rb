class SignupsController < ApplicationController
def create 
  @join = Join.new(signup_params) 
  if @join.save 
    redirect_to root_path 
  else 
    render 'new' 
  end 
end

   
private
  def signup_params
    params.require(:signup).permit(:firstname, :email) 
end   
end
