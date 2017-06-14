class ProofsController < ApplicationController
  protect_from_forgery with: :exception
  def index
  end

  def execute
    num = params[:input_num]
    ActionController::Base.helpers.HashHelper.intersection(num)
  end

end
