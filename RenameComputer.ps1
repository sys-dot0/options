# RenameComputer.ps1

# Funktion, um einen zufälligen Computernamen mit 6 Zeichen zu generieren
function Get-RandomComputerName {
    $zeichenSet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"  # Buchstaben und Zahlen
    $randomName = -join ((1..6) | ForEach-Object { $zeichenSet | Get-Random })
    return $randomName
}

# Funktion, um den Computer umzubenennen
function Rename-ComputerName {
    $neuerComputername = Get-RandomComputerName
    Write-Host "Der neue Computername ist: $neuerComputername"
    Rename-Computer -NewName $neuerComputername -Force
    Write-Host "Der Computername wurde geändert. Ein Neustart ist erforderlich."
}

# Umbenennen des Computers aufrufen
Rename-ComputerName
