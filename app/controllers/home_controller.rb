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
    @rsvp = Rsvp.find_by_name(rsvp_params[:name])

    if !@rsvp
      @rsvp = Rsvp.new(rsvp_params)
    else
      @rsvp.update_attributes(rsvp_params)
    end

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
