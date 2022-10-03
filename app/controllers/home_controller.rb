class HomeController < ApplicationController
  def index
  end
  def about 
  end
  def brands
  end
  def contact_created
    ContactMailer.contact(params[:message]).deliver
 end
end
