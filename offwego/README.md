# Offwego Linux Helper für Home Assistant OS

Offwego macht den Home-Assistant-Host im lokalen Netzwerk auf iPhone und iPad sichtbar. Verfügbar für ARM64/aarch64, insbesondere Raspberry Pi 4 mit 64-Bit-Home-Assistant-OS.

## Lokale Einrichtung

1. Offwego Linux Helper installieren und starten.
2. Im Tab **Protokoll** den sechsstelligen **lokalen Kopplungscode** ablesen.
3. Auf dem iPhone oder iPad Offwego öffnen, den Home-Assistant-Helper auswählen und mit diesem Code koppeln.

Beide Geräte müssen sich für Erkennung und Systembefehle im selben lokalen Netzwerk befinden. Der Helper meldet sich per Bonjour/mDNS. Lokale Befehle werden verschlüsselt und authentifiziert übertragen.

## Serverstatus-Push

1. Auf dieser Add-on-Seite **Weboberfläche öffnen** wählen.
2. **Mit iPhone koppeln** drücken.
3. Den angezeigten Push-Code auf dem iPhone unter **Serverstatus-Push → Helper koppeln** eingeben.
4. Auf dem iPhone **Serverstatus per Push melden** einschalten und Mitteilungen erlauben.

Der Push-Code gilt fünf Minuten und kann einmal verwendet werden. Er ist unabhängig von der sechsstelligen lokalen PIN im Protokoll. Das Erzeugen eines Push-Codes schaltet die Statusmeldungen des Helpers ein. Der Schalter **Serverstatus über Push melden** schaltet sie wieder aus oder ein.

Adresse und Zugangsschlüssel werden nicht eingegeben. Der eigene Push-Zugang wird geschützt gespeichert und bleibt nach Neustarts erhalten. Die Weboberfläche ist über die Home-Assistant-Anmeldung zugänglich.

Der Helper meldet sich alle 30 Sekunden. Nach 90 Sekunden ohne Meldung gilt er als offline. Die Online-Meldung setzt eine stabile Verbindung voraus. Kurze Ausfälle werden ignoriert; häufiges Abbrechen und Wiederverbinden erzeugt höchstens eine Meldung pro Helper und Minute. Beim Ausschalten der Statusmeldungen kann der Helper nach 90 Sekunden als offline gemeldet werden.

## Neustart und Ausschalten

Neustart und Ausschalten des **Home-Assistant-Hosts** erfolgen über die Supervisor-API und erfordern die ausdrückliche Sicherheitsabfrage in Offwego. Dies betrifft den ganzen Host, nicht nur das Add-on. Der Push-Dienst führt keine Systembefehle aus.

## Updates über Home Assistant

Das Hunterapps-Repository muss im Add-on-Store eingerichtet sein:

```
https://github.com/Petajaeger/home-assistant-addons
```

Unter **Einstellungen → Add-ons → Add-on-Store → ⋮ → Nach Updates suchen** nach einer neuen Version suchen. Danach die Offwego-App öffnen und **Aktualisieren** wählen. In neueren Oberflächen heißt „Add-ons“ möglicherweise „Apps“.

Normale Updates derselben Repository-Installation erhalten lokale Kopplung, Push-Zugang und Push-Einstellung unter `/data/offwego/`. Die Versionsnummer wird oben auf dieser Seite angezeigt.

## Wechsel vom bisherigen lokalen Add-on

Die lokale Installation und die Repository-Installation sind unterschiedliche Apps. Die vorhandenen lokalen Daten werden nicht automatisch in die neue Installation übertragen.

1. Lokales Offwego-Add-on sichern und zunächst behalten.
2. Dort **Beim Systemstart starten** ausschalten und das Add-on stoppen.
3. Die Offwego-App aus dem Hunterapps-Repository installieren und starten.
4. Den Helper in Offwego mit der neuen lokalen PIN koppeln und Push bei Bedarf mit einem neuen Push-Code einrichten.
5. Die alte Installation erst entfernen, wenn die neue geprüft ist. Nicht beide Varianten gleichzeitig starten.

Falls die neue Installation nicht funktioniert, diese stoppen und die bisherige lokale Installation wieder starten. Die bisherige Kopplung ist dort weiterhin vorhanden, solange die alte App nicht entfernt wurde.

## Fehlerbehebung

- **Weboberfläche öffnen fehlt:** Oben muss mindestens Version **0.1.2** angezeigt werden. Die bisherige lokale Version 0.1.1 enthält diese Oberfläche nicht.
- **Kein Update sichtbar:** Repository eingerichtet? Handelt es sich noch um die lokale Installation? Im Store nach Updates suchen. Das Repository aktualisiert die lokale App nicht automatisch.
- **Code abgelaufen:** Einen neuen Push-Code erzeugen. Dieser Code gehört zur Push-Einrichtung auf dem iPhone, nicht zur lokalen Kopplung.
- **Push-Dienst nicht erreichbar:** Internetverbindung prüfen und später erneut versuchen. Bereits gespeicherte Zugänge bleiben erhalten; Statusmeldungen werden erneut versucht. Lokale Offwego-Befehle bleiben unabhängig davon verfügbar.
- **Helper wird nicht entdeckt:** Beide Geräte ins gleiche lokale Netz bringen und prüfen, ob Bonjour/mDNS durch das Netzwerk erlaubt wird.

## Prüfumfang

Version 0.1.2: ARM64/musl-Paket gebaut; Linux-Kopplungs-, CLI-, Zugriffsschutz- und Persistenztests bestanden. Die Weboberfläche wurde in einer lokalen Testumgebung geprüft. Installation, Containerlaufzeit und echte Push-Zustellung auf Home-Assistant-Hardware sind noch zu bestätigen. Die bisherige Version wurde bereits auf Home-Assistant-Pi eingerichtet und lokal gekoppelt.
