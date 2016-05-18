require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "not signed in" do
    let(:factory_user) { create(:user) }

    before do
      post :create, user: new_user_attributes
    end

    it "returns http success" do
      get :show, {id: factroy_user.id}
      expect(response).to have_http_status(:success)
    end
  end
end
