# language: de
Funktionalität: Erstellen eines Artikels
	Als Trainer des Vereins soll es möglich sein, einen Artikel zu veröffentlichen.
	
Szenario: Erfolgreich einen Artikel erstellen
	Gegeben sei dass ich als Mitglied angemeldet bin
	Wenn ich "Artikel erstellen" auswähle
	Und ich die Daten für den neuen Artikel eingebe
	Und ich den Button "Artikel erstellen" auswähle
	Dann soll eine Bestätigungsmeldung "Der Artikel wurde erfolgreich erstellt!" angezeigt werden
	Und der Artikel soll angezeigt werden
	Und der Artikel soll sich auf der Startseite befinden
	
Szenario: Fehlende Angaben bei der Artikel-Erstellung
	Gegeben sei dass ich als Mitglied angemeldet bin
	Wenn ich "Artikel erstellen" auswähle
	Und ich die Daten für den neuen Artikel nicht eingebe
	Und ich den Button "Artikel erstellen" auswähle
	Dann soll eine Fehlermeldung angezeigt werden
	
Szenario: Ich bin nicht als User angemeldet
	Gegeben sei dass ich nicht angemeldet bin
	Wenn ich auf die Seite für einen neuen Artikel gehe
	Dann soll ich auf die Login-Seite weitergeleitet werden
	Und soll eine Fehlermeldung "Sie besitzen nicht ausreichend Rechte" angezeigt werden