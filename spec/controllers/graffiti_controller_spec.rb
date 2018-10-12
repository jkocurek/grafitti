require 'rails_helper'

RSpec.describe GraffitiController, type: :controller do

  describe "GET #report with valid data" do
    it "returns http success" do
      get :report, :params => {:alderman => "Hopkins", :month => "8", :year => "2017"}

      expect(response).to have_http_status(:success)
    end
  end
  describe "GET #report with invalid month" do
    it "returns http success" do
      get :report, :params => {:alderman => "Hopkins", :month => "13", :year => "2017"}

      expect(response).to have_http_status(:bad_request)
    end
  end
end
