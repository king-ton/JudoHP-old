# encoding: utf-8

Wenn /^ich auf die Benutzer\-Übersicht gehe$/ do
  visit users_path
  page.should have_content("Benutzer")
  page.should have_content("Name")
  page.should have_content("E-Mail")
end

Wenn /^ich die Daten für den neuen Benutzer eingebe$/ do
  fill_in "E-Mail", with: "tfreitag93€gmail.com"
  fill_in "Passwort", with: "mitglied"
  fill_in "Password confirmation", with: "mitglied"
end

Dann /^der Benutzer soll angezeigt werden$/ do
  pending # express the regexp above with the code you wish you had
end

Wenn /^ich die Daten für den neuen Benutzer nicht eingebe$/ do
  pending # express the regexp above with the code you wish you had
end

Dann /^ich befindet mich auf der Seite für die Erstellung eines neuen Benutzers$/ do
  pending # express the regexp above with the code you wish you had
end

Dann /^soll mir eine Fehlermeldung angezeigt werden$/ do
  pending # express the regexp above with the code you wish you had
end

Dann /^ich befinde mich auf der Startseite$/ do
  pending # express the regexp above with the code you wish you had
end

Wenn /^ich einen Benutzer bearbeite möchte$/ do
  pending # express the regexp above with the code you wish you had
end

Dann /^wird mir eine Fehlermeldung angezeigt$/ do
  pending # express the regexp above with the code you wish you had
end

Wenn /^ich auf die Seite des aktuellen Benutzers gehe$/ do
  pending # express the regexp above with the code you wish you had
end

Dann /^werden mir alle Informationen angezeigt$/ do
  pending # express the regexp above with the code you wish you had
end

Gegebensei /^dass ich als Mitglied angemeldet$/ do
  pending # express the regexp above with the code you wish you had
end

Gegebensei /^ein weiter User besteht$/ do
  pending # express the regexp above with the code you wish you had
end

Wenn /^ich auf die Seite des anderen Users gehe$/ do
  pending # express the regexp above with the code you wish you had
end

Dann /^werden nur wichtige Informationen angezeigt$/ do
  pending # express the regexp above with the code you wish you had
end