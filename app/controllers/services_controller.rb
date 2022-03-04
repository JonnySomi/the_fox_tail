class ServicesController < ApplicationController
  def index
    @services = Service.all
    if params[:query].present?
      @services = @services.where('name ILIKE ?', "%#{params[:query]}%")
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: 'services/list', locals: { services: @services }, formats: [:html] }
    end
  end

  def new
    @service = Service.new
  end
  # def show
  #   find_service
  #   @user_services = User_service.new
  # end

  def create
    @service = Service.new(service_params)
    #@service.user = current_user
    if @service.save
      redirect_to new_service_user_service_path(@service)
    else
      render :new
    end
  end


  private

  # def find_service
  #   @service = Service.find(params[:id])
  # end

  def service_params
    params.require(:service).permit(:name, :photo, :category)
  end
end
