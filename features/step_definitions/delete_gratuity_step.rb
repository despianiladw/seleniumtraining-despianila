World(ShowMeTheCookies)
require 'csv'
require 'smarter_csv'

Given("I choose dropdown outlet") do
  find(".app-components-Fields-ReduxForm-DropdownOutlet-__DropdownOutlet___7X8pK").click
  find(".app-components-Fields-ReduxForm-DropdownOutlet-__DropdownOutlet___2pXZY", :text => "Outlet 7").click
  sleep 3
end

Given("I delete gratuity with {int}") do |int|
  find(".app-pages-Library-Gratuity-List-__List___Op7V4", :text => "Gratuity #{int}").click
  find(".btn.btn-danger").click
  find(".modal-footer>button:nth-child(2)").click
end

Then("I not see gratuity with {int}") do |int|
  page.should have_no_content("Gratuity #{int}")
end
