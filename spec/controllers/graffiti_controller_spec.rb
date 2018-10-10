require 'rails_helper'

RSpec.describe GraffitiController, type: :controller do

  describe "GET #report" do
    it "returns http success" do
      get :report
      expect(response).to have_http_status(:success)
    end
  end

end
