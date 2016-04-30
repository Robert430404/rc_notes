class ApikeysController < ApplicationController
  before_action :authenticate_user!

  def new
  	ApiKey.create

  	flash[:notice] = "API Key successfully created"
  	redirect_to setting_url
  end

  def destroy
    @key = ApiKey.find(params[:id])

    @key.destroy()

  	flash[:notice] = "API Key successfully deleted"
  	redirect_to setting_url
  end
end
