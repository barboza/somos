require 'spec_helper'

describe Mission do
  before do
    @mission = Mission.make!
  end

  it "should valid" do
    @mission.should be_valid
  end

  describe "Validations" do
    subject { @mission }

    it { should validate_presence_of :title }
    it { should validate_presence_of :description }
    it { should validate_presence_of :goal }
    it { should validate_presence_of :category }
  end

  describe "Associations" do
    it {  should belong_to :category }
  end
end
