require 'rails_helper'

RSpec.describe Graffiti do
   context "With valid input" do 
      
      it "should return number of graffiti reports" do 
         expect(Graffiti.get_graffiti_report("2", "8", "2017")).to be(296)
      end 
   end

   context "With invalid input" do 
      
      it "should return wrong number of graffiti reports" do 
         expect(Graffiti.get_graffiti_report("2", "8", "2022")).to be(0)
      end 
   end
end
