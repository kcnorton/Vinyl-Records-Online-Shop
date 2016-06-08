FactoryGirl.define do 
	#sequence(:email) { |n| "user#{n}@example.com" }

	factory :product do 
		name "product1"
		description "test product"
		image_url "www.product1.com"
		price 15
	end

	factory :comment do 
				rating 
				user
				body "test comment"
				product 
			end

end