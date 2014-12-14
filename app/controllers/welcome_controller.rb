class WelcomeController < ApplicationController
  def index
    render :layout => "_welcome"
  end
end
