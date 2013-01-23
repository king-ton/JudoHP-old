# encoding: utf-8

Gegebensei /^dass ich als Administrator angemeldet bin$/ do
  user = User.create(:email => "judo.schlettau@gmail.com", :password => "admin")
  visit root_path
  fill_in "E-Mail", with: user.email
  fill_in "Passwort", with: user.password
  click_button "Anmelden"
end

Gegebensei /^dass ich als Mitglied angemeldet bin$/ do
  user = User.create(:email => "tfreitag93@gmail.com", :password => "mitglied")
  visit root_path
  fill_in "E-Mail", with: user.email
  fill_in "Passwort", with: user.password
  click_button "Anmelden"
end

Gegebensei /^dass ich nicht angemeldet bin$/ do
  visit root_path
  page.should have_content("Anmelden")
end

Dann /^soll eine Bestätigungsmeldung "(.*?)" angezeigt werden$/ do |meldung|
  page.should have_content(meldung)
end

Dann /^soll eine Fehlermeldung "(.*?)" angezeigt werden$/ do |fehler|
  page.should have_content(fehler)
end

Wenn /^ich auf die Startseite gehe$/ do
  visit root_path
end

Dann /^ich soll auf die Seite "(.*?)" weitergeleitet werden$/ do |seite|
end

Wenn /^ich "(.*?)" auswähle$/ do |link|
  click_link link
end

Wenn /^ich den Button "(.*?)" auswähle$/ do |button|
  click_button button
end