# Funktion, um Skripte von GitHub herunterzuladen
function Download-Script {
    param (
        [string]$url,
        [string]$dateiname
    )

    $zielPfad = "C:\Temp\$dateiname"

    # Skript von GitHub herunterladen
    Invoke-WebRequest -Uri $url -OutFile $zielPfad
    Write-Host "Skript heruntergeladen: $zielPfad"

    return $zielPfad
}

# Funktion, um das Menü anzuzeigen
function Show-Menu {
    cls
    Write-Host "====================="
    Write-Host "OH Spoofer"
    Write-Host "====================="
    Write-Host "Wählen Sie eine Option:"
    Write-Host "1. Umbenennen des Computers"
    Write-Host "======================================================"
    Write-Host "2. Weitere Aktion 2 (hier könnte eine andere Funktion sein)"
    Write-Host "==========================================================="
    Write-Host "3. Weitere Aktion 3 (hier könnte eine andere Funktion sein)"
    Write-Host "==========================================================="
    Write-Host "4. Beenden"
    Write-Host "====================="
}

# Hauptprogramm
do {
    Show-Menu
    $auswahl = Read-Host "Bitte eine Zahl eingeben"

    switch ($auswahl) {
        1 {
            # Skript für Umbenennen des Computers herunterladen
            $url = "https://raw.githubusercontent.com/sys-dot0/options/refs/heads/main/RenameComputer.ps1"
            $skriptPfad = Download-Script -url $url -dateiname "RenameComputer.ps1"
            & $skriptPfad  # Skript ausfuehren
            Read-Host "Drücken Sie Enter, um zum Menü zurückzukehren"
        }
        2 {
            # Skript für Option 2 herunterladen
            $url = "https://raw.githubusercontent.com/DEIN_USERNAME/PowerShell-Skripte/main/Option2.ps1"
            $skriptPfad = Download-Script -url $url -dateiname "Option2.ps1"
            & $skriptPfad  # Skript ausführen
            Read-Host "Drücken Sie Enter, um zum Menü zurückzukehren"
        }
        3 {
            # Skript fuer Option 3 herunterladen
            $url = "https://raw.githubusercontent.com/DEIN_USERNAME/PowerShell-Skripte/main/Option3.ps1"
            $skriptPfad = Download-Script -url $url -dateiname "Option3.ps1"
            & $skriptPfad  # Skript ausfuehren
            Read-Host "Drücken Sie Enter, um zum Menü zurückzukehren"
        }
        4 {
            Write-Host "Programm wird beendet..."
        }
        default {
            Write-Host "Ungültige Eingabe. Bitte wählen Sie eine der Optionen 1-4."
            Read-Host "Drücken Sie Enter, um zum Menü zurückzukehren"
        }
    }
} while ($auswahl -ne 4)
