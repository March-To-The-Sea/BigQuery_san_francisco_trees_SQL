WITH specie_types AS
  (SELECT DISTINCT species, Count(species) AS occurence_value
  FROM bigquery-public-data.san_francisco_trees.street_trees
  GROUP BY species
  ORDER BY occurence_value DESC)

SELECT *
FROM specie_types