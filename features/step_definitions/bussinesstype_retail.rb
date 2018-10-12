When("user click retail") do
  find('.header-business-types.dropdown-menu>div>div:nth-child(3)>a:nth-child(2)').click
end

Then("user should see retail page") do
  page.should have_content(' Moka untuk Bisnis Ritel ')
end
