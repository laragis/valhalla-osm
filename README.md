# Valhalla OSM

## CMD

```shell
just build
wget -O custom_files/vietnam-latest.osm.pbf https://download.geofabrik.de/asia/vietnam-latest.osm.pbf
```

## Containers

- https://github.com/valhalla/valhalla/pkgs/container/valhalla

## Docker

- https://github.com/nilsnolde/docker-valhalla

## Related projects

- https://valhalla.github.io/valhalla/#related-projects
- https://github.com/nextzen/lrm-mapzen

## Demos

- https://valhalla.openstreetmap.de/directions?profile=car&wps=106.64407253265382,10.802987693055442,106.651668548584,10.793797811273068
- https://valhalla.github.io/demos/routing/index-internal.html#loc=17,10.800970,106.646052
- http://localhost:8002/route?json={"costing":"auto","costing_options":{"auto":{"maneuver_penalty":5,"country_crossing_penalty":0,"country_crossing_cost":600,"width":1.6,"height":1.9,"use_highways":1,"use_tolls":1,"use_ferry":1,"ferry_cost":300,"use_living_streets":0.5,"use_tracks":0,"private_access_penalty":450,"ignore_closures":false,"ignore_restrictions":false,"ignore_access":false,"closure_factor":9,"service_penalty":15,"service_factor":1,"exclude_unpaved":1,"shortest":false,"exclude_cash_only_tolls":false,"top_speed":140,"fixed_speed":0,"toll_booth_penalty":0,"toll_booth_cost":15,"gate_penalty":300,"gate_cost":30,"include_hov2":false,"include_hov3":false,"include_hot":false,"disable_hierarchy_pruning":false}},"exclude_polygons":[],"locations":[{"lon":105.80366134643556,"lat":21.026667906159307,"type":"break"},{"lon":105.81207275390626,"lat":20.98371980215998,"type":"break"}],"units":"kilometers","alternates":0,"id":"valhalla_directions","directions_options":{"language":"vi-VN"}}