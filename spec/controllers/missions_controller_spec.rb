require 'spec_helper'

describe MissionsController do
  include Devise::TestHelpers

  before do
    User.stub(where: [user])
    @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in user
  end

  let(:user)    { stub_model(User) }
  let(:mission) { mock_model(Mission, id: 123) }

  describe "GET 'show'" do
    before { Mission.stub(find: mission) }

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
    before { Mission.stub(new: mission) }

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
    before do
      Mission.stub(new: mission)
      mission.stub('save' => true, 'user=' => nil)
    end

    it "redirects to missions#show" do
      post 'create'
      response.should redirect_to(mission_url(mission))
    end

    it "assings the current user as the user of the mission" do
      mission.should_receive('user=').with(user)
      post 'create'
    end

    it "saves the mission" do
      mission.should_receive('save').with(no_args)
      post 'create'
    end
  end

  describe "GET 'edit'" do
    before { Mission.stub(find: mission) }

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
      Mission.stub(find: mission)
      mission.stub(update_attributes: nil)
    end

    it "returns http success" do
      put 'update', {id: mission.id}
      response.should be_success
    end

    it "renders template missions#update" do
      put 'update', {id: mission.id}
      response.should render_template('missions/update')
    end
  end

  describe "DELETE 'destroy'" do
    before do
      Mission.stub(find: mission)
      mission.stub(destroy: true)
    end

    it "redirects to missions url" do
      delete 'destroy', id: mission.id
      response.should redirect_to(missions_url)
    end
  end
end
