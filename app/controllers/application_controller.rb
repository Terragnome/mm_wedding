class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :set_constants

  def set_constants
    @app_title='Melanie+Michael'
    @asset_root=''
    @email='wedding@melanieandmichael.us'
    @crate_registry_url='http://www.crateandbarrel.com/Gift-Registry/Michael-Lin-and-Melanie-So/r5198518'
    @amazon_registry_url='http://www.amazon.com/registry/wedding/Z9LEWSYZSJND'
    @honeyfund_url = 'http://www.honeyfund.com/wedding/melanieandmichael'
  end
end