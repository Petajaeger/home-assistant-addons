## 0.1.4

- Helper-Version wird für die Anzeige in Offwego auf iPhone und iPad übermittelt.

## 0.1.3

- Anleitung: sechsstelliger Kopplungscode für Neustart und Herunterfahren im Tab Protokoll klar beschrieben.
- Lokale Steuerung und Push-Kopplung verständlich getrennt.
- Interne Prüfhinweise aus der Benutzeranleitung entfernt.

# Changelog

## 0.1.2

- Opt-in-Serverstatus-Push mit einmaligem Kopplungscode ergänzt.
- Eigene Weboberfläche über Home-Assistant-Ingress.
- Geschützter eigener Push-Zugang und dauerhafte Push-Einstellung.
- HTTPS-Zertifikatsbundle im Container ausdrücklich installiert.

## 0.1.1

- Neustart und Ausschalten des Home-Assistant-Hosts über die Supervisor-API ergänzt.
- Sicherheitsabfrage in Offwego für beide Systemaktionen aktiviert.
- Anzeigename auf „Home Assistant“ geändert.
- Kopplungsdaten werden nun im persistenten App-Datenverzeichnis gespeichert.

## 0.1.0

- Erste Testversion für Home Assistant OS auf ARM64-Raspberry-Pi-Geräten.
- Automatische Erkennung im lokalen Netzwerk.
- Verschlüsselte Kopplung mit Offwego.
