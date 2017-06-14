class ApplicationController < ActionController::Base
  include ProofsHelper

  protect_from_forgery with: :exception
end
