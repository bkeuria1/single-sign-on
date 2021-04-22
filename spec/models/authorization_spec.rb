require 'rails_helper'

RSpec.describe Authorization, type: :model do
  
  describe '#create_with_omniauth' do
		      let(:user) {FactoryGirl.create(:user)}
      let(:auth) {FactoryGirl.create(:valid_authorization, user: user)}

    it 'is a class method' do
			expect(Authorization).to respond_to(:create_with_omniauth)
    end
    context 'it creates a valid Authorization' do
      it 'creates an Authorization with a provider' do
      end
      it 'creates an Authorization with a uid' do
      end 
      it 'creates an Authorization with a user_id' do
      end
    end
    context 'it creates an invalid Authorization' do
      it "is invalid without a user_id" do
      end
    end
  end 
end
