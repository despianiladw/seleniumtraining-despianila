When("user click business type") do
  find('#menu2').click
end

When("user click Coffe Shop") do
  find(".header-business-types.dropdown-menu>div>div:nth-child(2)>a:nth-child(2)").click
end

Then("should see coffe shop page") do
  page.should have_content('Moka untuk Bisnis Kedai Kopi')
end
