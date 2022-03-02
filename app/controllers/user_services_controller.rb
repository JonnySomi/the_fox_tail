class UserServicesController < ApplicationController

  def index
    @user_services = UserService.all
  end
end
