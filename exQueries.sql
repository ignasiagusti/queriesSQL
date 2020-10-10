SELECT count(*) AS Resultat FROM flights;
SELECT origin, AVG(ArrDelay) AS prom_arribades, AVG(DepDelay) AS prom_sortides FROM flights GROUP BY Origin;
SELECT origin, colYear, colMonth, AVG(ArrDelay) AS prom_arribades FROM flights 
 GROUP BY Origin,colYear,colMonth ORDER BY Origin;
SELECT City, colYear, colMonth, AVG(ArrDelay) AS prom_arribades FROM flights INNER JOIN usairports
 ON flights.Origin=usairports.IATA GROUP BY City,colYear,colMonth ORDER BY City;
SELECT UniqueCarrier, colYear, colMonth, SUM(Cancelled) AS total_cancelled
 FROM flights GROUP BY colYear, colMonth ORDER BY total_cancelled DESC;
SELECT tailNum, SUM(Distance) AS totalDistance FROM flights WHERE tailNum != ''
 GROUP BY tailNum ORDER BY totalDistance DESC LIMIT 10;
SELECT UniqueCarrier, AVG(ArrDelay) AS avgDelay FROM flights GROUP BY UniqueCarrier HAVING AVG(ArrDelay) > 10 ORDER BY avgDelay DESC;
