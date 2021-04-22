
require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
	describe "#create"  do
    context "no active session, User and Authorization do not exist" do 
			
      context 'register with github' do
				 before do
        session[:user_id] = nil
        # Database has been cleaned, so shouldn't have to worry about User and Authorization
        end 
				
        describe 'When signing up for first time' do
					let(:id1)  {1}
          let(:id2)  {2}
          let(:user_id) {1}
          let(:user) {double('User', name: 'SUNY Tester', email: 'stester@binghamton.edu', id: id1)}
          let(:auth) {double('Authorization', provider: "github", uid: "123456", user_id: id1, user: double('User', name: 'SUNY Tester', email: 'stester@binghamton.edu', id: id1))}
				
		
          it "creates a User" do
					  expect { post :create, provider: :github }.to change(User, :count).by(1)
						
          end        
          it "creates an Authorization", :pending => true do
						post :create, provider: :github
          end
          it "creates a current_user", :pending => true do
						post :create, provider: :github
          end
          it "creates a session", :pending => true do
						post :create, provider: :github
          end
          it "sets a flash message", :pending => true do
						post :create, provider: :github
          end              
        end
      end
    end
  end
end


	

#   describe "GET #start_test" do
#     it "returns http success" do
#       get :start_test
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET #clear" do
#     it "returns http success" do
#       get :clear
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET #debug" do
#     it "returns http success" do
#       get :debug
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET #new" do
#     it "returns http success" do
#       get :new
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET #create" do
#     it "returns http success" do
#       get :create
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET #failure" do
#     it "returns http success" do
#       get :failure
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET #destroy" do
#     it "returns http success" do
#       get :destroy
#       expect(response).to have_http_status(:success)
#     end
#   end


