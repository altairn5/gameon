class SitesController < ApplicationController
  
  def index
	 	@user = User.new
		render :index
  end

  def about
  end

  def contact
  end

end
