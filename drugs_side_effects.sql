SELECT * FROM kl.drugs_side_effects_drugs_com;
use kl;

-- Top 5 highest-rated drugs
SELECT drug_name, rating
FROM drugs_side_effects_drugs_com
ORDER BY rating DESC
LIMIT 5;


-- Count of Rx vs OTC drugs

SELECT rx_otc, COUNT(*) AS total
FROM drugs_side_effects_drugs_com
GROUP BY rx_otc;

-- Most reviewed drug

SELECT drug_name, no_of_reviews
FROM drugs_side_effects_drugs_com
ORDER BY no_of_reviews DESC
LIMIT 1;

-- Drugs with same generic name
SELECT generic_name, COUNT(*) AS total
FROM drugs_side_effects_drugs_com
GROUP BY generic_name
HAVING COUNT(*) > 1;


