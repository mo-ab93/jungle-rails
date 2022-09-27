require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    it "is not valid without a name" do
      @category = Category.new
      params = {
      description: 'big rock',
      quantity: 5,
      category: @category,
      price_cents: 1000

      }
      expect(Product.new(params)).to_not be_valid
    end

    it "is not valid without a price" do
      @category = Category.new
      params = {
      name: 'rock',
      description: 'big rock',
      quantity: 5,
      category: @category
      }
      expect(Product.new(params)).to_not be_valid
    end

    it "is not valid without a quantity" do
      @category = Category.new
      params = {
      name: 'rock',
      description: 'big rock',
      category: @category,
      price_cents: 1000
      }
      expect(Product.new(params)).to_not be_valid
    end

    it "is not valid without a category" do
      @category = Category.new
      params = {
      name: 'rock',
      description: 'big rock',
      quantity: 5,
      price_cents: 1000
      }
      expect(Product.new(params)).to_not be_valid
    end
  end
end
