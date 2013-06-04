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

  describe "POST 'create'" do
    let(:attributes) do
      {mission: FactoryGirl.attributes_for(:mission)}
    end

    it "returns http success" do
      post 'create', attributes
      response.should be_success
    end

    it "redirects to missions#show" do
      post 'create', attributes
      response.should render_template('missions/new')
    end
  end

  describe "GET 'edit'" do
    before do
      mission.save!
    end

    it "returns http success" do
      get 'edit', {id: mission.id}
      response.should be_success
    end

    it "renders template missions#edit" do
      get 'edit', {id: mission.id}
      response.should render_template('missions/edit')
    end
  end

  describe "PUT 'update'" do
    before do
      mission.save!
    end

    let(:attributes) do
      {mission: FactoryGirl.attributes_for(:mission, title: 'new title')}
    end

    it "returns http success" do
      put 'update', {id: mission.id}.merge(attributes)
      response.should be_success
    end

    it "renders template missions#update" do
      put 'update', {id: mission.id}.merge(attributes)
      response.should render_template('missions/update')
    end
  end

  describe "GET 'delete'" do
    pending "returns http success" do
      get 'delete'
      response.should be_success
    end
  end

end
