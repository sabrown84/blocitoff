require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:item) { create :item }

  it { is_expected.to belong_to(:user) }
  it { is_expected.to validate_presence_of(:user) }
  it { is_expected.to validate_length_of(:name).is_at_least(5) }

  describe "attributes" do
    it "has name" do
      expect(item).to have_attributes(name: "MyString")
    end
  end
end
