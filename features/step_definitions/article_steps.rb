# encoding: utf-8

Wenn /^ich die Daten für den neuen Artikel eingebe$/ do
  @article = Article.new(:heading => "Suspendisse sagittis metus.", :content => "Integer et varius arcu? Donec non metus. Integer et varius arcu? Donec non metus. /n Integer et varius arcu? Donec non metus. Integer et varius arcu? Donec non metus.")
  fill_in "Titel", with: @article.heading
  fill_in "Inhalt", with: @article.content
end

Wenn /^ich die Daten für den neuen Artikel nicht eingebe$/ do
end

Wenn /^ich auf die Seite für einen neuen Artikel gehe$/ do
  visit new_article_path
end

Dann /^der Artikel soll angezeigt werden$/ do
  page.should have_content(@article.heading)
  page.should have_content(@article.content)
  page.should_not have_content("Neuen Artikel erstellen")
end

Dann /^der Artikel soll sich auf der Startseite befinden$/ do
  visit root_path
  page.should have_content(@article.heading)
  page.should have_content(@article.content)
end

Dann /^soll eine Fehlermeldung angezeigt werden$/ do
  page.should have_content("Titel muss ausgefüllt werden")
  page.should have_content("Inhalt muss ausgefüllt werden")
end

Dann /^soll ich auf die Login\-Seite weitergeleitet werden$/ do
  page.should_not have_content("Artikel erstellen")
  page.should have_content("Anmelden")
end

