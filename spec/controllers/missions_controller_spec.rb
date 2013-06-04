require 'spec_helper'

describe MissionsController do
  include Devise::TestHelpers

  before do
    @request.env["devise.mapping"] = Devise.mappings[:user]
    user = FactoryGirl.create(:user)
    sign_in user
  end

  let(:mission) do
    FactoryGirl.build(:mission)
  end

  describe "GET 'show'" do
    before do
      mission.save!
    end

    it "returns http success" do
      get 'show', {id: mission.id}
      response.should be_success
    end

    it "renders template missions/show" do
      get 'show', {id: mission.id}
      response.should render_template('missions/show')
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end

    it "renders template missions/new" do
      get 'new'
      response.should render_template('missions/new')
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
