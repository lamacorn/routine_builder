require 'rails_helper'

RSpec.describe Routine, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:routine_products) }

    it { should belong_to(:customer) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
