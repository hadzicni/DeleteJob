#	----- DelJob -----


#Löscht beliebige Dateien mit gewählten Alter in gewählten Verzeichnis automatisch.
#Löscht leere Ordner aus dem Verzeichnis automatisch.
#LogFile wird geführt. Geloggt werden aktuelles Datum und Uhrzeit und die Dateien die gelöscht werden.
#LogFile loggt nicht leere Ordner die gelöscht werden.
#LogFile wird überprüft und bei gewählter Dateigrösse gelöscht und neu angelegt.

#ACHTUNG!!!
#--> Thumb.db Dateien werden von Windows nicht angezeigt und können von dem Script NICHT gelöscht werden.
#--> Ordner scheinen dadurch leer, werden aber nicht gelöscht.

#Automatisiertes ausführen des Sripts mit Hilfe der Windows Aufgabenplanung.

#Zu löschende Dateitypen können präzisiert werden.
#Pfad in dem Dateien gelöscht werden kann präzisiertwerden.
#Pfad an dem das LogFile angelegt/verwendet wird kann präzisiert werden.
#Zeit nach der Dateien gelöscht werden kann präzisiert werden.
#Maximale Dateigrösse des LogFiles kann präzisiert werden.

#Author: Nikola Hadzic
#Date: 21.11.2023


#Pfad des zu leerenden Verzeichnisses.
$path = "H:\Test"

#Variable zum festlegen nach wie vielen Tagen die Dateien gelöscht werden.
$altersGrenze = 0

#Aktuelles Datum
$heutigesDatum = Get-Date

#Heutiges Datum - Altersgrenze = Datum, ab dem Dateien gelöscht werden sollen
$altersDatum = $heutigesDatum.AddDays(-$altersGrenze)

# 
$alteDateien = Get-ChildItem -Path $path | Where-Object { $_.LastWriteTime -lt $altersDatum }

# Durchlaufe die alten Dateien und lösche sie
foreach ($datei in $alteDateien) {
    Write-Host "Lösche Datei: $($datei.FullName)"
    Remove-Item $datei.FullName -Force
}

Write-Host "Löschvorgang abgeschlossen."