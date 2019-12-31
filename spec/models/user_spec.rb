require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validation" do
    describe "full_name" do
      context "when user enter full name less tahn 6 characters" do
        it "returns error message" do
          user = User.new full_name: "ahmed"
          user.valid?
          expect(user.errors[:full_name])
        end
      end
    end
    
    describe "role" do
      context "when user doesn't have role" do
        it "returns error message" do
          user = User.new role: ""
          user.valid?
          expect(user.errors[:role])
        end
      end
    end   

    describe "phone" do
      context "when user doesn't have phone number" do
        it "returns error message" do
          user = User.new phone: '01236547896'
          user.valid?
          expect(user.errors[:phone])
        end
      end

      context "when user enter phone number used before" do
        it "returns error message" do
          user = User.new phone: ""
          user.valid?
          expect(user.errors[:phone])
        end
      end
    end
  end
end
