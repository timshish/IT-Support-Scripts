# ===========================================================================================================
# Beschreibung: Entsperrt AD Benutzerkonto und protokolliert Ergebnis (Erfolg oder Fehler) in einer log-Datei
# ===========================================================================================================

Param(
$BenutzerKuerzel
)
$LogPfad = "C:\Logs\UnlockLog.txt"
$Zeit = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
try {
Unlock-ADAccount -Identity $BenutzerKuerzel -ErrorAction Stop
Write-Host "Konto $BenutzerKuerzel wurde entsperrt." -ForegroundColor Green
Add-Content -Path "$LogPfad" -Value "$Zeit - ERFOLG: $BenutzerKuerzel entsperrt."
}
catch {
Write-Host "Fehler beim Entsperren von $BenutzerKuerzel." -ForegroundColor Red
Add-Content -Path "$LogPfad" -Value "$Zeit - FEHLER: $BenutzerKuerzel nicht entsperrt."
}
