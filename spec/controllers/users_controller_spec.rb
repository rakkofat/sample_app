require "rails_helper"

RSpec.describe UsersController do
  describe "GET new" do

    it "should get new" do
      get :new
      expect(response).to render_template(:new)
      expect(response).to have_http_status(:success)
    end
  end

end
