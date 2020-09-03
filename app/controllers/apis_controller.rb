class ApisController < ApplicationController
  def index
    @apis = Api.all
  end

  def show
  end

  def new
    @createApi = Api.new
  end

  def create
    @api = Api.create(api_params)
    if @api.save
      redirect_to apis_path
    else
      render 'new'
    end
  end

  private
  def api_params
    params.require(:api).permit(:domain, :url, :description)
  end

  def set_api
    @api = Api.find(params[:id])
  end
end
