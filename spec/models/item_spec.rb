require 'rails_helper'

RSpec.describe Item, type: :model do
  let (:item) { Item.create!(name:"New Name Title") }

  describe "attributes" do
    it "has name" do
      expect(item).to have_attributes(name: "New Name Title")
    end
  end
end
