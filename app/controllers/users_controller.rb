require 'pry'

class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
    @users=User.all
  end


  def new
    @user=User.new
  end


  def create

    @user= User.new(user_params)  #Remember User.new is creating a new isntance of the database object but not saving
    if @user.save                  #if it passes all of the parameters, its going to render the user and save else its going back to .new
      redirect_to @user            #save  is a helper method. save is goign to try and save base ond validations
    else
      render :new
    end
  end


  def update

  end



  def show
  end



  def edit

  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :password,
      :password_confirmation
    )
  end
  def set_user
    @user = User.find(params[:id])
  end
end
