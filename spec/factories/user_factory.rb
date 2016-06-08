FactoryGirl.define do 
	sequence(:email) { |n| "user#{n}@example.com" }

	factory :user do 
		email 
		password "factorypassword"
		first_name "First"
		last_name "Last"
		admin false
	end

	factory :admin, class: User do 
		email
		password "secretpw"
		admin true
		first_name "Admin"
		last_name "User"
	end

end