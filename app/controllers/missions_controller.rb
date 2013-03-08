class MissionsController < ApplicationController
  
  inherit_resources
  actions :all
  before_filter :authenticate_user!, except: [:show, :index]
end
