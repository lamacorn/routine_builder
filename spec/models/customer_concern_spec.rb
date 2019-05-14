require 'rails_helper'

RSpec.describe CustomerConcern, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:customer) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
