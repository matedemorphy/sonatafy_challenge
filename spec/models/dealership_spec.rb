require 'rails_helper'

RSpec.describe Dealership, type: :model do
  subject { build(:dealership) }

  describe "validations" do
    context "invalids" do
      it "is not valid without a location" do
        subject.location = nil
        expect(subject).to_not be_valid
      end
    
      it "is not valid without an address" do
        subject.address = nil
        expect(subject).to_not be_valid
      end
    
      it "is not valid without a phone_number" do
        subject.phone_number = nil
        expect(subject).to_not be_valid
      end
    
      it "is not valid without a cell_phone_number" do
        subject.cell_phone_number = nil
        expect(subject).to_not be_valid
      end
    
      it "is not valid without a email" do
        subject.email = nil
        expect(subject).to_not be_valid
      end
    
      it "is not valid without a valid email format" do
        subject.email = "not a valid email format"
        expect(subject).to_not be_valid
      end
    end
   
    context "valid" do
      it "is valid with all attributes" do
        expect(subject).to be_valid
      end 
    end

    context "relationships" do
      it "should have has_many :cars definition" do
        expect(Dealership.reflect_on_association(:cars).macro).to be (:has_many)
      end 
    end
  end
end
