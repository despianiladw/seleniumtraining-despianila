When("user click full service restourant") do
  find('.header-business-types.dropdown-menu>div>div:nth-child(3)>a:nth-child(1)').click
end

Then("user should see full service restourant page") do
  page.should have_content(' Moka untuk Bisnis Restoran ')
end
