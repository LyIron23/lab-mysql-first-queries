SELECT * FROM lab1.applestore2;

SELECT DISTINCT prime_genre
FROM lab1.applestore2;

SELECT * FROM lab1.applestore2;

/*2. Which is the genre with more apps rated?*/
SELECT prime_genre, SUM(rating_count_tot)
FROM lab1.applestore2
GROUP BY prime_genre
ORDER BY rating_count_tot DESC;

/*3. Which is the genre with more apps?*/
SELECT prime_genre, COUNT(track_name)
FROM lab1.applestore2
GROUP BY prime_genre
ORDER BY COUNT(track_name) DESC;

/*4. Which is the one with less?*/
SELECT prime_genre, COUNT(track_name)
FROM lab1.applestore2
GROUP BY prime_genre
ORDER BY COUNT(track_name) ASC;

/*5. Take the 10 apps most rated.*/
SELECT track_name, rating_count_tot
FROM lab1.applestore2
ORDER BY rating_count_tot DESC
LIMIT 10;

/*6. Take the 10 apps best rated by users.*/
SELECT track_name, user_rating
FROM lab1.applestore2
ORDER BY user_rating DESC 
LIMIT 10;

/*7. Take a look on the data you retrieved in the question 5. Give some insights.*/
/* There is a big difference between the TOP3 and the rest.

/*8. Take a look on the data you retrieved in the question 6. Give some insights.*/
/*The is some missing characters in some names. The infos are not well identified */

/*9. Now compare the data from questions 5 and 6. What do you see?*/
/*They are not the same.*/

/*10. How could you take the top 3 regarding the user ratings but also the number of votes?*/
SELECT track_name, user_rating, rating_count_tot
FROM lab1.applestore2
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;

/*11. Does people care about the price?*/
SELECT price, AVG(rating_count_tot), AVG(user_rating), AVG(rating_count_tot)*AVG(user_rating) AS total_score
FROM lab1.applestore2
GROUP BY price
ORDER BY total_score DESC;
/*More expensive games are less played, but have good ratings. This could mean that cheaper games are more attractive to players to try.*/