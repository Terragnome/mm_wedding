class HomeController < ApplicationController
  def home
  end
  
  def about
  end
  
  def info
  end

  def photos
    @ceremony_images = Photo.where(category: :ceremony)
    @reception_images = Photo.where(category: :reception)
    @outtake_images = Photo.where(category: :outtake)
  end

  def contact
  end

end
