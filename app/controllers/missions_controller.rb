class MissionsController < ApplicationController

  inherit_resources
  actions :all
  before_filter :authenticate_user!, except: [:show, :index]

  def create_resource(object)
    object.user = current_user
    object.save
  end
end
