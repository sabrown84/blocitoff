require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  let(:item) {create(:item)}

  describe "POST #create" do
    it "increases the number of items by 1" do
      expect {post :create, item: {name:"This is a test"} }.to change(Item, :count).by(1)
    end


    it "returns http redirct" do
      get :create, item: {name: "This is a test"}
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE destroy" do
    it "deletes the item" do
      delete :destroy
      count = Item.where({id:my_item.id}).count
      expect(count).to eq 0
    end

    it "returns http success" do
      delete :destroy
      expect(response).to have_http_status(:success)
    end
  end

end
