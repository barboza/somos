class MissionsController < ApplicationController
  
  inherit_resources
  actions :new, :create, :update
end
