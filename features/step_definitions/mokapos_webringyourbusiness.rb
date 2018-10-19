When("user see jumbotron") do
  page.should have_css('.container.section-2>div>div>h2:nth-child(1)')
end

When("user see element We Bring Your Business") do
  page.should have_css('.container.section-2>div>div>h2:nth-child(1)')
end

When("user see element All in pricing") do
  page.should have_css('.panel-body>div>div>div>h2:nth-child(1)')
end

When("user see element What our customer say") do
  page.should have_css('.testimonial-box>div>div>h2:nth-child(1)')
end

When("user see element Getting Started is As Simple As Ever") do
  page.should have_css('.container-fluid.section-5>div>div>h2:nth-child(1)')
end

When("user see element slider") do
  page.should have_css('#carousel-example-generic>div')
end

When("user see trial") do
  page.should have_css('#index-mokapos>div:nth-child(9)>div>div>div>div>div>div>h3:nth-child(1)')
end

When("user see footer about") do
  page.should have_css('#mainFooter>div>div>div:nth-child(1)>div:nth-child(1)>div>h3')
end

When("user see footer support") do
  page.should have_css('#mainFooter>div>div>div:nth-child(1)>div:nth-child(3)>div>h3')
end

When("should click video") do
  find('#watchnowbuttonindex').click
end

Then("play video") do
  page.should have_css('#videoModal>div>div>div>div>iframe')
end
