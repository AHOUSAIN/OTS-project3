class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def about
    @title = "About Us"
  end

  def contact
    @title = "Contact Us"
  end
  
  def ticket
    @title = "Tickets"
  end
end
