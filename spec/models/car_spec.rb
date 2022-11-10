require 'rails_helper'

RSpec.describe Car, type: :model do
  subject { build(:car) }

  describe "validations" do
    context "invalids" do
      it "is not valid without a make" do
        subject.make = nil
        expect(subject).to_not be_valid
      end
    
      it "is not valid without a model" do
        subject.model = nil
        expect(subject).to_not be_valid
      end
    
      it "is not valid without a condition" do
        subject.condition = nil
        expect(subject).to_not be_valid
      end
    
      it "is not valid without a price" do
        subject.price = nil
        expect(subject).to_not be_valid
      end
    
      it "is not valid without a dealership" do
        subject.dealership = nil
        expect(subject).to_not be_valid
      end
    
      it "is not valid if is not a number" do
        subject.price = "not a number"
        expect(subject).to_not be_valid
      end
    end
   
    context "valid" do
      it "is valid if price is a number" do
        expect(subject.price).to be_a(Numeric)
      end

      it "is valid with all attributes" do
        expect(subject).to be_valid
      end 
    end

    context "relationships" do
      it "should have belongs_to :dealership definition" do
        expect(Car.reflect_on_association(:dealership).macro).to be (:belongs_to)
      end 
    end
  end
end
