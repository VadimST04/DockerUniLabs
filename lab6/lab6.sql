SELECT cities.name, regions.name
FROM cities
INNER JOIN regions ON cities.region = regions.uuid
WHERE cities.population >= 350000;

SELECT cities.name, regions.name
FROM cities
INNER JOIN regions ON cities.region = regions.uuid
WHERE regions.name = 'Nord';

SELECT stations.station_id,stations.station_name, stations.branch_name,
           stations.branch_name,
        transitions.station_to_id
FROM stations
INNER JOIN transitions ON stations.station_id = transitions.station_from_id;