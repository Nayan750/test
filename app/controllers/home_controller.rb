class HomeController < ApplicationController
  def index
  end

  def about 
  end

  def brands
  end

  def customerservice
  end

  def terms
  end

  def privacy_policy
  end

  def career
    @contact = Contact.new
  end

end
