require 'rails_helper'

describe UsersController, :type => :controller do 

		before do 
			#@user = User.create!(email: "test@gmail.com", password: "testpassword")
			#@user2 = User.create!(email: "seconduser@gmail.com", password: "2ndpassword")
			@user = FactoryGirl.create(:user)
			@user2 = FactoryGirl.create(:user)
		end

		describe "GET #show" do 
			context "User is logged in" do 
				before do 
					sign_in @user
				end

				context "loads correct user details" do 
					before do 
						get :show, id: @user.id
					end

					it "responds successfully with an HTTP 200 status code" do 
						expect(response).to be_success
						expect(response).to have_http_status(200)
					end

					it "assigned user is the created user" do 
						expect(assigns(:user)).to eq @user
					end
				end

				context "User tries to access second user show page" do
					it "redirects to login" do 
						get :show, id: @user2.id
						expect(response).to redirect_to(root_path)
					end
				end
			end

			context "No user is logged in" do 
				it "redirects to login" do 
					get :show, id: @user.id
					expect(response).to redirect_to(root_path)
				end
			end

		end

end
