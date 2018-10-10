require 'rails_helper'

RSpec.describe Alderman do
   context "With valid input" do 
      
      it "should return alderman info" do 
         lastname = 'Hopkins'
         expect(Alderman.get_alderman(lastname)).to be_truthy
      end 
   end

   context "With invalid input" do 
      
      it "should return empty array" do 
         lastname = 'Hopins'
         expect(Alderman.get_alderman(lastname)).to eq([])
      end 
   end

   context "With valid input" do       
      it "should return ward number and full name" do 
         alderman_record = Alderman.get_alderman("Hopkins")
         expect(Alderman.parse_alderman(alderman_record[0])).to eq({"ward"=>"2", "fullname"=>"Brian Hopkins"})
      end
   end


   context "With invalid input" do       
      it "should not return ward number and full name" do 
         alderman_record = ""
         expect(Alderman.parse_alderman(alderman_record)).to eq({"fullname"=>nil, "ward"=>nil})
      end 
   end
end
