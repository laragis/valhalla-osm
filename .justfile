IMAGE_VALHALLA_TAG := "ttungbmt/valhalla:latest"
IMAGE_VALHALLA_OSM_TAG := "ttungbmt/valhalla-osm:latest"

build-valhalla:
  #!/usr/bin/env bash
  VALHALLA_DIR="/tmp/valhalla"
  REPO_URL="https://github.com/laragis/valhalla.git"

  if [ ! -d "$VALHALLA_DIR/.git" ]; then
    echo "Cloning Valhalla repo into $VALHALLA_DIR..."
    git clone "$REPO_URL" "$VALHALLA_DIR"
  else
    echo "Valhalla repo already exists. Pulling latest changes..."
    cd "$VALHALLA_DIR" || exit 1
    git pull
  fi

  echo "🐳 Building Docker image with buildx..."
  cd "$VALHALLA_DIR" || exit 1
  docker buildx build --tag "{{IMAGE_VALHALLA_TAG}}" .

build-docker-valhalla:
  #!/usr/bin/env bash
  cd "apps/docker-valhalla" && docker buildx build --build-arg "VALHALLA_BUILDER_IMAGE={{IMAGE_VALHALLA_TAG}}" --tag "{{IMAGE_VALHALLA_OSM_TAG}}" .

build: build-valhalla build-docker-valhalla

push:
  #!/usr/bin/env bash
  docker push {{IMAGE_VALHALLA_TAG}}
  docker push {{IMAGE_VALHALLA_OSM_TAG}}

download-data:
  #!/usr/bin/env bash
  cd apps/valhalla-osm && wget -O custom_files/vietnam-latest.osm.pbf https://download.geofabrik.de/asia/vietnam-latest.osm.pbf