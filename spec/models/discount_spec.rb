require 'rails_helper'

RSpec.describe Discount, type: :model do
  let(:discount) { Discount.new() }

  it 'should have a name' do
    discount.validate
    expect(discount.errors[:code]).to include("can't be blank")
    discount.code = 'SHIRT'
    expect(discount).to be_valid
  end
end