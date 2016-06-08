require 'rails_helper'

describe Product do
	context "when the product has comments" do
		
		before do
			@product = FactoryGirl.create(:product)
			@user = FactoryGirl.create(:user)
			#@comment = FactoryGirl.create(:comment)
			#@comment2 = FactoryGirl.create(:comment)
			#@comment3 = FactoryGirl.create(:comment)
			@product.comments.create!(rating: 1, user: @user, body: "Awful album!")
			@product.comments.create!(rating: 3, user: @user, body: "Mediocre at best")
			@product.comments.create!(rating: 5, user: @user, body: "I could cry its so good!")
		end

		it "returns the average rating of all comments" do
			expect(@product.comments.average(:rating)).to eq 3
		end

		it "is not valid" do
			expect(Product.new(description: "Nice bike")).not_to be_valid
		end

	end
end