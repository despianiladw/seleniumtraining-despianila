Given("I've landing page") do
  puts "despianila"
end

When("I try to check bussiness types") do
  puts "dwiantari"
end

Then("I should get response business types") do
  # v1 = get_business_types
  # puts v1
  # binding.pry
  puts get_business_types
  binding.pry
end
