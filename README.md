# Universitätsspital Basel - Job PowerShell Script

Das `DelJob` PowerShell-Skript ist eine automatisierte Lösung zur Verwaltung von Dateien und Ordnern. Es ermöglicht das selektive Löschen von Dateien basierend auf ihrem Alter und das Entfernen leerer Ordner innerhalb eines spezifizierten Verzeichnisses. Das Skript führt zudem ein detailliertes LogFile, das die Löschvorgänge dokumentiert.

## Features

- **Automatisches Löschen von Dateien**: Löscht Dateien, die älter als eine definierte Zeitspanne sind, aus einem ausgewählten Verzeichnis.
- **Entfernung leerer Ordner**: Leere Ordner werden automatisch gelöscht.
- **Logging**: Erstellung eines LogFiles, das Datum, Uhrzeit und Details der gelöschten Dateien festhält.
- **LogFile Management**: Überprüfung und Neuanlage des LogFiles bei Erreichen einer spezifischen Größe.
- **Konfigurierbar**: Der Pfad für das Löschverzeichnis, der Pfad des LogFiles, die zu löschenden Dateitypen, das Alter der Dateien und die maximale Größe des LogFiles können individuell angepasst werden.

## Wichtige Hinweise

- **Thumb.db Dateien**: Aufgrund von Windows-Beschränkungen können `Thumb.db` Dateien nicht gelöscht werden. Dies kann dazu führen, dass Ordner fälschlicherweise als leer erkannt, aber nicht gelöscht werden.
- **Automatisierung**: Das Skript kann mittels Windows Aufgabenplanung für regelmäßige Ausführungen konfiguriert werden.

## Konfiguration

- **Dateitypen**: Spezifizieren Sie, welche Dateitypen gelöscht werden sollen.
- **Verzeichnispfade**: Legen Sie den Pfad fest, in dem Dateien gelöscht werden, sowie den Pfad, an dem das LogFile angelegt und verwaltet wird.
- **Datei-Alter**: Bestimmen Sie die Altersgrenze der zu löschenden Dateien.
- **LogFile-Größe**: Definieren Sie eine maximale Größe für das LogFile, bei deren Erreichen das LogFile gelöscht und neu angelegt wird.

## Autor

- **Nikola Hadzic**

## Erstellungsdatum

- **21. November 2023**
