require 'spec_helper'

describe MissionsController do

  describe "GET 'show'" do
    it "returns http success" do
      get 'show'
      response.should be_success
    end
  end

  describe "GET 'new'" do
    pending "returns http success" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'create'" do
    pending "returns http success" do
      get 'create'
      response.should be_success
    end
  end

  describe "GET 'edit'" do
    pending "returns http success" do
      get 'edit'
      response.should be_success
    end
  end

  describe "GET 'update'" do
    pending "returns http success" do
      get 'update'
      response.should be_success
    end
  end

  describe "GET 'delete'" do
    pending "returns http success" do
      get 'delete'
      response.should be_success
    end
  end

end
