World(ShowMeTheCookies)
require 'csv'
require 'smarter_csv'

Given("I try login mokapos") do
  if !File.exist?("login_state.csv")
    visit '/'
    find('#login-menu').click
    fill_in 'email',:with => 'pasta@mailinator.com'
    fill_in 'password',:with => '123456'
    click_button 'Sign In'
    sleep 7
    var1 = get_me_the_cookie('remember_token')
    # CSV.open("login_state.csv", "w") do |csv|
    #   csv << ["NAME", "VALUE", "PATH", "DOMAIN", "EXPIRES", "SECURE"]
    #   csv << [var1[:name], var1[:value], var1[:path], var1[:domain], var1[:expires], var1[:secure]]
    # end
  else
    visit "https://backoffice-staging.mokapos.com/login"
    sleep 7
    var1 = SmarterCSV.process('login_state.csv')
    create_cookie(var1[0][:name], var1[0][:value])
  end
end

Given("I access gratuity") do
  visit "https://backoffice-staging.mokapos.com/library/gratuity"
  sleep 5
end

Given("I create gratuity with {int} and {int}") do |int, int2|
  find("button", :text => "Create Gratuity").click
  fill_in "name", :with => "Gratuity #{int}"
  fill_in "amount", :with => int2
  find("button.btn.btn-primary.app-pages-Library-Gratuity-GratuityDetail-GratuityForm-__GratuityForm___2bi4R:nth-child(3)").click
end

Then("I should see {int} on gratuity list") do |int|
  expect(page).to have_content("Gratuity #{int}")
end

Then("I should see number of gratuity") do
  puts page.all("td", :text => "Gratuity").count
end
