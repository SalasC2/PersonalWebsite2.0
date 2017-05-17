class HomeController < ApplicationController

  def index
    @contact = Contact.new
  end

  def new
    @contact = Contact.new
  end

  def create
      @contact = Contact.new(contact_params)
      @contact.request = request
      respond_to do |f|
        if @contact.deliver
          f.html {render "index"}
        else
          f.html { render "index" }
        end
      end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
