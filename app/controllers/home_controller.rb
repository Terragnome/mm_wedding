class HomeController < ApplicationController
  def home
  end
  
  def about
  end
  
  def info
  end
  
  def rsvp
  end
  
  def rsvp_submit
    @rsvp = {
      :name => params[:name],
      :email => params[:email],
      :entree => params[:entree],
      :shuttle => params[:shuttle],
      :other => params[:other]
    }
    puts @rsvp
    RsvpMailer.rsvp_email(@rsvp).deliver
  end

  def registry
  end

  def contact
  end
end
