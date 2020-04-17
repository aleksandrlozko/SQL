import cx_Oracle

username = 'system'
password = 'oracle'
db = 'localhost:49161/xe'

connection = cx_Oracle.connect(username, password, db)
cursor = connection.cursor()

# FIRST QUERY
query = '''
SELECT COUNT(name) AS amount, 
		rating

FROM movies

GROUP BY rating

HAVING rating IN ('R', 'TV-14', 'TV-MA')

ORDER BY amount
'''

cursor.execute(query)

record = cursor.fetchone()

print("FIRST QUERY")
print("|amount|rating|")
print('|' + '-' * 6 + '|' + '-' * 6 + '|')
while record:
	print(f"|{record[0]:6d}|{record[1]:6s}|")
	record = cursor.fetchone()

#SECOND QUERY
query = '''
SELECT movie_genres.movie_genres AS genres, round(COUNT(name) * 100 / (SELECT SUM(COUNT(movie_genres)) FROM movie_genres GROUP BY movie_genres), 1) AS percentage

FROM movies

JOIN movie_genres 

ON movies.name = movie_genres.movie_name

GROUP BY movie_genres.movie_genres
'''

cursor.execute(query)

record = cursor.fetchone()

print("\nSECOND QUERY")
print(f"|name{' ' * 21}|percentage|")
print('|' + '-' * 25 + '|'+ '-' * 10 + '|')
while record:
	print(f"|{record[0]:25s}|{record[1]:10f}|")
	record = cursor.fetchone()

#THIRD QUERY
query = '''
SELECT movies.release_year AS year, 
		COUNT(movies.name) AS amount

FROM movies

JOIN movie_country

ON movies.director = movie_country.movie_director

GROUP BY movies.release_year

ORDER BY movies.release_year
'''

cursor.execute(query)

record = cursor.fetchone()

print("\nTHIRD QUERY")
print("|year|amount|")
print('|' + '-' * 4 + '|' + '-' * 6 + '|')
while record:
	print(f"|{record[0]}|{record[1]:6d}|")
	record = cursor.fetchone()


cursor.close()
connection.close()
