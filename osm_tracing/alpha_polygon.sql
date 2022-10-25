SELECT ST_SetSRID(the_geom,4326)
FROM
  pgr_pointsaspolygon(
    'SELECT id::int4, ST_X(the_geom) AS x, ST_Y(the_geom) AS y FROM temp_catchment', 0.000005) AS the_geom;
