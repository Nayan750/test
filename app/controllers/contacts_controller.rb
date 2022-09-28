class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to thank_you_url, notice: "Thank you!"

    else
      flash.now[:error] = 'Could not send message'
      render :new
    end
  end 
end
