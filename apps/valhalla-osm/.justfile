download-data:
  #!/usr/bin/env bash
  wget -O custom_files/vietnam-latest.osm.pbf https://download.geofabrik.de/asia/vietnam-latest.osm.pbf

up:
  docker compose up -d