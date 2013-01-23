# encoding: utf-8

Gegebensei /^ein Mitglied mit der E\-Mail\-Adresse "(.*?)" und dem Passwort "(.*?)"$/ do |email, password|
  @user = User.create(email: email, password: password)
  visit root_path
end

Wenn /^ich meine E\-Mail\-Adresse "(.*?)" und mein Passwort "(.*?)" eingebe$/ do |email, password|
  fill_in I18n.t('activerecord.attributes.user.email'), with: email
  fill_in I18n.t('activerecord.attributes.user.password'), with: password
end

Wenn /^meine Anmeldung bestätige$/ do
  click_button I18n.t('text.session.create')
end

Dann /^soll eine Anmeldebestätigung angezeigt werden$/ do
  page.should have_content(I18n.t('message.session.create'))
end

Dann /^meine E\-Mail\-Adresse "(.*?)" soll angezeigt werden$/ do |email|
  page.should have_content(email)
  page.should_not have_content(I18n.t('text.session.create'))
end

Dann /^soll eine Abmeldebestätigung angezeigt werden$/ do
  page.should have_content(I18n.t('message.session.destroy'))
  page.should have_content(I18n.t('text.session.create'))
end