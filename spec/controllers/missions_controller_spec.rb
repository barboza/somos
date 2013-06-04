require 'spec_helper'

describe MissionsController do
  include Devise::TestHelpers

  before do
    @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in user
  end

  let(:user) do
    FactoryGirl.create(:user)
  end

  let(:mission) do
    FactoryGirl.build(:mission, user_id: user.id)
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
    let(:model) do
      stub_model(Mission, id: 123, save: true)
    end

    it "redirects to missions#show" do
      Mission.stub(new: model)
      post 'create'
      response.should redirect_to(mission_url(model))
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

  describe "DELETE 'destroy'" do
    before do
      mission.save!
    end

    it "redirects to missions url" do
      delete 'destroy', id: mission.id
      response.should redirect_to(missions_url)
    end
  end
end
