DROP TABLE IF EXISTS temp_catchment;
CREATE TABLE temp_catchment AS
SELECT nodes.the_geom FROM ways_vertices_pgr AS nodes JOIN
(SELECT * FROM pgr_drivingdistance(
	'SELECT gid::integer AS id, source::int4, target::int4, cost_s AS cost FROM ways', 
	343212, 
	300, 
	FALSE, 
	FALSE)
) AS route
ON nodes.id = route.id1;