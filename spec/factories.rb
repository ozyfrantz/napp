FactoryGirl.define do
	factory :user do
		sequence(:name) { |n| "Person #{n}" }
		sequence(:email){ |n| "person#{n}@example.com"}
		password "sc1ca2tta"
		password_confirmation "sc1ca2tta"
	end
	factory :admin do
		admin true
	end
	factory :micropost do
		content "Lorem ipsum"
		user
	end
end