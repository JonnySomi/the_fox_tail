class ServicesController < ApplicationController
  def index
    @services = Service.all
    @services = @services.where('name ILIKE ?', "%#{params[:query]}%") if params[:query].present?
    respond_to do |format|
      format.html
      format.text { render partial: 'services/list', locals: { services: @services }, formats: [:html] }
    end
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to new_service_user_service_path(@service)
    else
      render :new
    end
  end

  private

  def service_params
    params.require(:service).permit(:name, :photo, :category)
  end
end
