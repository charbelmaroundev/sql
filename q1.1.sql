SELECT movies.name, movies.earnings_rank 
FROM movies, oscars
WHERE oscars.type = "Best-Picture" 
AND movies.earnings_rank = (SELECT MIN(movies.earnings_rank) FROM movies);
