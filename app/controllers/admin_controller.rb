class AdminController < ApplicationController
	before_filter :authenticate_user!

  def index
  	authorize! :index, @user, :message => 'Not authorized as admin'
  	@users = User.all
  	
  end
end
