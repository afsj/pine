class OpportunitiesController < ApplicationController
  before_filter :authenticate_user!, :except => []  
  def index
  end
end
