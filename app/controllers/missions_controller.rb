class MissionsController < ApplicationController
  
  inherit_resources
  actions :new, :create, :update

  def new
    @categories = Category.all
    new!
  end
end
