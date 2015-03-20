class HomeController < ApplicationController
  def home
  end
  
  def about
  end
  
  def info
  end

  def photos
    @ceremony_images = Photo.where(category: :ceremony).order(:file_file_name)
    @reception_images = Photo.where(category: :reception).order(:file_file_name)
    @outtake_images = Photo.where(category: :outtake).order(:file_file_name)
  end

  def registry
  end

  def contact
  end

end
