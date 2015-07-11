class OpportunitiesController < ApplicationController
  before_filter :authenticate_user!, :except => []  
  has_scope :post_type
  has_scope :opportunity_category
  
  def index
    if (params[:post_type] == 1)
      @opportunity_categories = Opportunity.select(:opportunity_category_id).distinct.where(:post_type => 'Employment')
    elsif (params[:post_type] == 2)
      @opportunity_categories = Opportunity.select(:opportunity_category_id).distinct.where(:post_type => 'Academic')
    else
      @opportunity_categories = Opportunity.select(:opportunity_category_id).distinct.where(:post_type => 'Others')
    end
    
    unless (params.has_key?(:post_type))
      params[:post_type] = 1
    end
    
    @opportunities = apply_scopes(Opportunity).all
                 .paginate(page: params[:page], per_page: 10)
                 .order("opportunities.id")
  end
end
