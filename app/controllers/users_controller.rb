class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.find_or_create_by(name: get_name)
  	if @user
      log_in(@user)
      redirect_to boards_url
  	else
  		render 'new'
  	end
  end

  private

    def get_name
      name = params[:user][:name]
      name.blank? ? User.next_guest_name : name
    end
end
