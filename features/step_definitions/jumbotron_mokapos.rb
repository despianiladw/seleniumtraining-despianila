When("user see mokapos page") do

end

Then("user see title jumbotron") do
  page.should have_content('Selling Made Easy')
end

Then("user see content jumbotron") do
  page.should have_content('Gunakan Aplikasi Kasir MOKA di perangkat Android & IOS Anda hanya dalam hitungan menit dan jalankan bisnis Anda dari mana saja.')
end

Then("user see content free trial") do
  page.should have_content('COBA MOKA GRATIS 14 HARI')
end

Then("user see content video") do
  page.should have_content('TONTON VIDEONYA DISINI ')
end
