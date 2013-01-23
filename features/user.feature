# language: de
Funktionalität: Verwaltung des User-Managments
	Als Administrator soll es möglich neue Benutzer zu erstellen und bestehende zu bearbeiten.
	
Szenario: Erfolgreich einen neuen Nutzer erstellen
	Gegeben sei dass ich als Administrator angemeldet bin
	Wenn ich auf die Benutzer-Übersicht gehe
	Und ich "Benutzer erstellen" auswähle
	Und ich die Daten für den neuen Benutzer eingebe
	Und ich "Benutzer erstellen" auswähle
	Dann soll eine Bestätigungsmeldung "Der Benutzer wurde erfolgreich erstellt!" angezeigt werden
	Und der Benutzer soll angezeigt werden

Szenario: Fehlende/Fehlerhafte Eingaben
	Gegeben sei dass ich als Administrator angemeldet bin
	Wenn ich auf die Benutzer-Übersicht gehe
	Und ich "Benutzer erstellen" auswähle
	Und ich die Daten für den neuen Benutzer nicht eingebe
	Dann soll eine Fehlermeldung angezeigt werden
	Und ich befindet mich auf der Seite für die Erstellung eines neuen Benutzers
	
Szenario: Ich möchte als Mitglied alle Benutzer anschauen
	Gegeben sei dass ich als Mitglied angemeldet bin
	Wenn ich auf die Benutzer-Übersicht gehe
	Dann soll mir eine Fehlermeldung angezeigt werden
	Und ich befinde mich auf der Startseite
	
Szenario: Ich möchte als Mitglied einen anderen User bearbeiten
	Gegeben sei dass ich als Mitglied angemeldet bin
	Wenn ich einen Benutzer bearbeite möchte
	Dann wird mir eine Fehlermeldung angezeigt
	Und ich befinde mich auf der Startseite
	
Szenario: Informationen zum aktuellen Benutzer anzeigen
	Gegeben sei dass ich als Mitglied angemeldet bin
	Wenn ich auf die Seite des aktuellen Benutzers gehe
	Dann werden mir alle Informationen angezeigt
	
Szenario: Informationen zu einem anderen Benutzer
	Gegeben sei dass ich als Mitglied angemeldet
	Und ein weiter User besteht
	Wenn ich auf die Seite des anderen Users gehe
	Dann werden nur wichtige Informationen angezeigt