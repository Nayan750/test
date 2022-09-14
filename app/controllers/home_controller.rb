class HomeController < ApplicationController
  def index
  end
  def about 
  end
  def brands
    @brands = [ 'Sketchers','Whitenoisethelabel']
  end
end
