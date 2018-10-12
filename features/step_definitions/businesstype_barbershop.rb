When("user click Barber Shop") do
  find('.header-business-types.dropdown-menu>div>div:nth-child(2)>a:nth-child(3)').click
end

Then("user should see barber shop page") do
  page.should have_content(" Moka untuk Barbershop ")
end
