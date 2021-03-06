class ApplicationController < ActionController::Base
  include SessionsHelper
  include ApplicationHelper
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  add_flash_types :info, :danger

  rescue_from Exception,  with: :not_found

private

  def not_found
    redirect_to root_url
  end
end
