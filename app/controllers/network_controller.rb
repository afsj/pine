class NetworkController < ApplicationController
  before_filter :authenticate_user!, :except => []  
  def index
    @countries = Country.all
  end
end
