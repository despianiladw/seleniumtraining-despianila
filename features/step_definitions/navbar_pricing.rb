When("user click pricing button") do
  find('#pricing-menu').click
end

Then("should see pricing page") do
  page.should have_css('.panel-body>div>div>div>h1')
end
