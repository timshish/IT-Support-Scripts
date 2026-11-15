Befehle für AD (Active Directory):
Get-ADUser - Benutzerdaten abfragen
Add-ADuser - neuen Benutzer in AD anlegen
Set-ADUSer - Daten bearbeiten, etw hinzufügen
Unlock-ADUser - Konto entsperren
Set-ADAccountPassword - Passwort ändern oder zurücksetzen

Bespiel: Wenn man einen neuen User in AD anlegen will: 
New-ADUser -Name "Max Muster" -SamAccountName "maxmuster"
d.h. man hat den neuen User Max Muster mit dem login maxmuster erstellt
----------------------
