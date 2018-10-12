Given("user try login mokapos") do
  visit '/login'
end

When("user input username and password") do
  fill_in'email', :with => 'pasta@mailinator.com'
  fill_in'password', :with => '123456'
  click_button'Sign In'
  sleep 10
end

Then("should see dashboard mokapos") do
  page.should have_content('Dashboard')
end
