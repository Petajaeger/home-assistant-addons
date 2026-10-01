# Hunterapps Home Assistant Add-ons

Dieses Repository enthält den **Offwego Linux Helper** für Home Assistant OS auf ARM64 (aarch64), zum Beispiel Raspberry Pi 4 mit 64-Bit-Home-Assistant-OS.

## Repository hinzufügen

1. In Home Assistant **Einstellungen → Add-ons → Add-on-Store** öffnen. In neueren Oberflächen heißt „Add-ons“ möglicherweise „Apps“.
2. Oben rechts **⋮ → Repositories** wählen.
3. Diese URL hinzufügen:

```
https://github.com/Petajaeger/home-assistant-addons
```

4. Nach Updates suchen, **Offwego Linux Helper** im Abschnitt **Hunterapps Home Assistant Add-ons** öffnen und installieren.

[Repository direkt in Home Assistant hinzufügen](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository=https://github.com/Petajaeger/home-assistant-addons)

## Bereits ein lokales Offwego-Add-on installiert?

Home Assistant behandelt die lokale App und die App aus diesem Repository als unterschiedliche Installationen. Ein Repository-Update ersetzt die lokale Installation daher nicht automatisch.

1. Das lokale Offwego-Add-on sichern. Die bisherige Installation zunächst behalten.
2. Beim lokalen Add-on **Beim Systemstart starten** deaktivieren und **Stoppen** wählen.
3. Die Offwego-Version aus diesem Repository installieren und starten. Beide Varianten nicht gleichzeitig starten.
4. Den sechsstelligen lokalen Kopplungscode im Protokoll der neuen App ablesen und den neuen Helper in Offwego koppeln. Die neuen Daten werden separat gespeichert; bisherige Kopplungsdaten werden nicht automatisch übertragen.
5. Falls gewünscht, die neue Push-Kopplung unter **Weboberfläche öffnen** einrichten.
6. Erst wenn die neue Installation funktioniert, kann die alte lokale Installation entfernt werden. Bis dahin bleibt ein Rückweg möglich.

## Künftige Updates

Im Add-on-Store **⋮ → Nach Updates suchen** wählen. Die Offwego-App öffnen und **Aktualisieren** wählen. Die Daten dieser Repository-Installation bleiben bei normalen Updates unter `/data` erhalten.

## Dokumentation

[Einrichtung, Push und Fehlerbehebung](offwego/DOCS.md)

Die Repository-Struktur und Update-Erkennung folgen der [Home-Assistant-Dokumentation](https://developers.home-assistant.io/docs/apps/repository/).
