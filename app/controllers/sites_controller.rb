class SitesController < ApplicationController
  
  def index
	 	@user = User.new
	 	render :layout => false
  end

  def about
  end

  def contact
  end

end
