class HomeController < ApplicationController
  def home
  end
  
  def about
  end
  
  def info
  end
  
  def rsvp
    @rsvp = Rsvp.new
  end
  
  def rsvp_submit
    @rsvp = Rsvp.find_by_email(rsvp_params[:email])
    @rsvp = Rsvp.new(rsvp_params) if !@rsvp
    if @rsvp.save
      render :rsvp_submit
    else
      render :rsvp
    end
  end

  def registry
  end

  def contact
  end
  
  private
  
  def rsvp_params
    params.require(:rsvp).permit(:name, :email, :entree, :shuttle, :other)
  end
end
