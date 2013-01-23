# language: de
Funktionalität: Login/Logout eines Users
	Als Mitglied des Vereins soll es möglich, sich mit seiner 
	E-Mail-Adresse und seinem Passwort anzumelden und auch wieder abzumelden.

Szenario: Erfolgreich anmelden/abmelden
	Gegeben sei ein Mitglied mit der E-Mail-Adresse "tfreitag93@gmail.com" und dem Passwort "mitglied"
	Wenn ich "Anmelden" auswähle
	Und ich meine E-Mail-Adresse "tfreitag93@gmail.com" und mein Passwort "mitglied" eingebe
	Und meine Anmeldung bestätige
	Dann soll eine Anmeldebestätigung angezeigt werden
	Und meine E-Mail-Adresse "tfreitag93@gmail.com" soll angezeigt werden
	Wenn ich "Abmelden" auswähle
	Dann soll eine Abmeldebestätigung angezeigt werden

Szenario: Fehlerhafte Anmeldung
	Gegeben sei ein Mitglied mit der E-Mail-Adresse "tfreitag93@gmail.com" und dem Passwort "mitglied"
	Wenn ich "Anmelden" auswähle
	Und ich meine E-Mail-Adresse "tfreitag93@gmail.com" und mein Passwort "fehler" eingebe
	Und meine Anmeldung bestätige
	Dann soll eine Fehlermeldung "Falsche E-Mail oder Passwort!" angezeigt werden
	Und ich bin auf der Login-Seite
	Und ich bin nicht angemeldet