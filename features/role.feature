# language: de
Funktionalität: Erstellen und bearbeiten von Rollen
	Als Administrator soll es möglich sein neue Rollen zu erstellen und bestehende zu bearbeiten.
	Dabei soll man auch die Rechte der Rollen setzen können.

Szenario: Neue Rolle erstellen
	Gegeben sei dass ich als Administrator angemeldet bin
	Wenn ich auf die Rollen-Übersicht gehe
	Und ich "Neue Rolle erstellen" auswähle
	Und ich alle Daten eingebe
	Und ich "Rolle erstellen" auswähle
	Dann wird die neue Rolle in der Rollen-Übersicht angezeigt

Szenario: Rollen-Berechtigungen setzen
	Gegeben sei dass ich als Administrator angemeldet bin
	Und eine Rolle Mitglied ohne Berechtigungen zu editieren von Rollen
	Wenn ich auf die Rollen-Übersicht gehe
	Und ich die Berechtigung für das editieren von Rollen erteile
	Dann soll ein Mitglied Rollen editieren können