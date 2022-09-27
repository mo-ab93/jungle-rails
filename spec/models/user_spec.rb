require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
   
      it 'is valid with valid attributes' do
        
        params = {
        name:'moh',
        email: 'moh@gmail',
        password:'123',
        password_confirmation:'123'
        }
        expect(User.new(params)).to be_valid

      end
      it 'should not be valid if password is less than 3 characters' do
        params = {
        name:'moh',
        email: 'moh@gmail',
        password:'12',
        password_confirmation:'12'
        }
        expect(User.new(params)).to_not be_valid
      end
      it 'should not be valid if password and pass confirmation do not match' do
        params = {
        name:'moh',
        email: 'moh@gmail',
        password:'123',
        password_confirmation:'1233'
        }
        expect(User.new(params)).to_not be_valid
      end
  
      describe '.authenticate_with_credentials' do
        it "checks the login and returns the authenticated user" do
          user = User.create(name: "moh", :email => "moh@gmail", :password => "Abcdef", :password_confirmation => "Abcdef")
          authenticated_user = User.authenticate_with_credentials("moh@gmail", "Abcdef")
          expect(authenticated_user).to eq(user)
        end
        it "checks the login and returns nill if the login does not validate" do
          user = User.create(name: "moh", :email => "moh@gmail", :password => "Abcdef", :password_confirmation => "Abcdef")
          authenticated_user = User.authenticate_with_credentials("beb@bass", "Abcdef")
          expect(authenticated_user).to eq(nil)
        end
        it "checks the login and returns authenticated user regardless of trailing spaces or capitaliztion" do
          user = User.create(name: "moh", :email => "moh@gmail", :password => "Abcdef", :password_confirmation => "Abcdef")
          authenticated_user = User.authenticate_with_credentials("moh@gmail ", "Abcdef")
          expect(authenticated_user).to eq(user)
        end
      end
    end
end