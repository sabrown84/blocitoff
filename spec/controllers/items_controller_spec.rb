require 'rails_helper'

RSpec.describe ItemsController, type: :controller do


  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end

    it "flashes success" do
      get :create
      expect(flash[:notice].to be_present)
    end
  end

  describe "GET destroy" do
    it "returns http success" do
      get :destroy
      expect(response).to have_http_status(:success)
    end
  end

end
