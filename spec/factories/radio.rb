FactoryGirl.define  do
	
	factory :radio, class: Binda::Radio do
		content "fruit_3"
		association :field_setting, factory: :radio_setting
	end

end