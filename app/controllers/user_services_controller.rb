class UserServicesController < ApplicationController
  def index
    @user_services = UserService.all
  end

  def show
    find_user_service
  end

  def new
    @user_service = UserService.new
    @service = Service.find(params[:service_id])
  end

  def create
    @user_service = UserService.new(user_service_params)
    @user_service.user = current_user
    @service = Service.find(params[:service_id])
    @user_service.service = @service
    if @user_service.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    find_user_service
  end

  def update
    find_user_service
    if @user_service.update(user_service_params)
      redirect_to user_service_path(@user_service)
    else
      render :new
    end
  end

  def destroy
    @user_service = UserService.find(params[:id])
    @user_service.destroy
    redirect_to dashboard_path(current_user)
  end


  private

  def find_user_service
    @user_service = UserService.find(params[:id])
  end

  def user_service_params
    params.require(:user_service).permit(:start_date, :price_per_month, :hour_spent_per_month, :genre)
  end
end
