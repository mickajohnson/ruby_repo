require 'rails_helper'

RSpec.describe Nuser, type: :model do
  context "With valid attributes" do
    it "should save" do
      expect(build(:nuser)).to be_valid
    end
  end
  context "With invalid attributes" do
    it "should not save if first_name field is blank" do
      expect(build(:nuser, first_name: "")).to be_invalid
    end
    it "should not save if last_name field is blank" do
      expect(build(:nuser, last_name: "")).to be_invalid
    end
    it "should not save if email already exists" do
      create(:nuser)
      expect(build(:nuser)).to be_invalid
    end
    it "should not save if invalid email format" do
      expect(build(:nuser, email: "invalidEmail")).to be_invalid
    end
  end
end
