require 'spec_helper'

describe User do
  before do
    @user = User.make!
  end

  it "should valid" do
    @user.should be_valid
  end

  describe "password required?" do
    context "news users" do
      before do
        @user = User.new
      end

      it "requires a password" do
        @user.should be_password_required
      end

      it "should require password & match confirmation" do
        @user.password = nil
        @user.password_confirmation = nil
        @user.should_not be_valid

        @user.password = "niceguy"
        @user.password_confirmation = nil
        @user.should_not be_valid

        @user.password = "niceguy"
        @user.password_confirmation = "Guy"
        @user.should_not be_valid
      end
    end

    context "existing user" do
      before do
        @user.save!
        @user = User.find @user.id
        end

      it "requires a password when password is present" do
        @user.password = 'niceguy'
        @user.should be_password_required
      end

      it "requires a correct password when password_comfirmation is present" do
        @user.password_confirmation = 'xx'
        @user.should be_password_required
      end

      it "should not require password no password or confirmation is present" do
        @user.reload.should_not be_password_required
      end

      it "shoult not be required password" do
        @user.password = nil
        @user.password_confirmation = nil
        @user.should be_valid
      end
    end
  end

  describe "validations" do
    subject { @user }

    it{ should validate_presence_of :name }
    it{ should validate_presence_of :email }
    it{ should validate_presence_of :password }
  end
end
