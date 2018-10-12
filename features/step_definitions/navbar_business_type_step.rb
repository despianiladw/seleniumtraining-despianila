# When("user click business type") do
#   find('#menu2').click
# end

When("user click QUICK SERVICE RESTAURANT") do
  find('.header-business-types.dropdown-menu>div>div:nth-child(2)>a:nth-child(1)').click
end

Then("user should see quick service restaurant page") do
  page.should have_content("Moka untuk Bisnis Restoran Cepat Saji")
end
