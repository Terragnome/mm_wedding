class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :set_constants

  def set_constants
    @app_title='Melanie+Michael'
    @asset_root=''
    @email='m.and.m.wedding.adventure@gmail.com'
    @registry_url='http://www.crateandbarrel.com/gift-registry/'
  end
end