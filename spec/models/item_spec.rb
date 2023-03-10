require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:item) { Item.new() }

  it 'should have a name' do
    item.validate
    expect(item.errors[:name]).to include("can't be blank")
    expect(item.errors[:code]).to include("can't be blank")
    item.code = 'SHIRT'
    item.name = 'Reedsy Shirt'
    expect(item).to be_valid
  end
end