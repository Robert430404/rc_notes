class SettingsController < ApplicationController
  before_action :authenticate_user!

	def index
		@keys  = ApiKey.all
		@users = User.all
	end

end
