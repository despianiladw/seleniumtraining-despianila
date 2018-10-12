When("user click features button") do
  find('#features-menu').click
end

Then("should see features page") do
  page.should have_css('.jumbotron.visible-md.visible-lg>div>div>div>div>div>div>h1')
end
