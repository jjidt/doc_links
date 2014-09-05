def login(attributes)
  visit '/'
  click_link 'login'
  fill_in :name, :with => attributes[:name]
  fill_in :password, :with => attributes[:password]
  click_button ''
end
