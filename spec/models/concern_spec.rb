require 'rails_helper'

RSpec.describe Concern, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:routine_products) }

    it { should have_many(:customer_concerns) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
