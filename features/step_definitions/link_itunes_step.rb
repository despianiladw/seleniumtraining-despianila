When("user click itunes button") do
  find(".app-store-normal").click
end

Then("see about itunes page") do
  window = page.driver.browser.window_handles
  page.driver.browser.switch_to.window(window.last)
  page.driver.browser.close
  page.driver.browser.switch_to.window(window.first)
end
