Given("user try open mokapos") do
  visit '/'
end

When("user click about button") do
  click_link'About'
end

Then("should see about page") do
  page.should have_content('Tentang Moka POS')
end
