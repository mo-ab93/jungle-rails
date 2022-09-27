require 'rails_helper'

RSpec.describe User, type: :model do

  before(:each) do
    @user = User.create(name: "Mohammed", last_name: "Abbas", email: "moh@mail.com", password: "123", password_confirmation: "123")
  end

  describe 'Validations' do

    it 'is valid with valid attributes' do
      expect(@user).to be_present
    end

    it "should be created with a password and password confirmation fields" do 
      @user.password = nil
      @user.save
      expect(@user.password).to_not be_present

      @user.password_confirmation = nil
      @user.save
      expect(@user.password_confirmation).to_not be_present

    end 

    it "should have matching password and password confirmations" do
      expect(@user.password).to eq(@user.password_confirmation)

      @user.password_confirmation = "456"
      @user.save
      expect(@user.password).not_to eq(@user.password_confirmation)
    end

    it "should have a unique email" do
      @user = User.new(name: "Mohammed", last_name: "Abbas", email: "Moh@mail.com", password: "123", password_confirmation: "123")
      @user.validate
      expect(@user.errors.full_messages).not_to be_empty
    end
    
    it "should not be valid if password is less than 3 characters" do
      @user.password = '12'
      @user.save
      expect(@user.errors.full_messages).to include("Password is too short (minimum is 3 characters)")   
    end

  end

  describe '.authenticate_with_credentials' do
    it "should be authenticated successfully if email contains whitespace" do
      @user = User.new(name: "Mohammed", last_name: "Abbas", email: "  Moh@mail.com   ", password: "123", password_confirmation: "123")
      expect(@user.errors.full_messages).to be_empty
    end

    it "should be authenticated successfully if email contains wrong case" do
      @user = User.new(name: "Mohammed", last_name: "Abbas", email: "MoH@mail.coM", password: "123", password_confirmation: "123")
      expect(@user.errors.full_messages).to be_empty
    end

  end


end

