#!/bin/sh
set -eu

mkdir -p /var/lib/offwego /data/offwego
exec /usr/local/lib/offwego/Offwego.LinuxHelper
