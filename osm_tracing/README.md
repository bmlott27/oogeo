# OSM Tracing Example

This directory contains two sample `.sql` files that were part of a prototype I developed for finding drive times from a given location using OpenStreetMap data. The files operate as follows:

* The `catchment_table.sql` code uses the pgRouting `pgr_drivingdistance` function to find a list of points that represent the furthest points in the road network that can be reached from a given starting node. The points are stored in a temporary table called `temp_catchment`.
* The `alpha_polygon.sql` code uses the points in the `temp_catchment` to create a polygon representation of the area you could reach along the road network. This is accomplished using the pgRouting `pgr_pointsaspolygon` function.