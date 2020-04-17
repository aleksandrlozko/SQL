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
SELECT movies.name, 
	movie_genres.movie_genres AS genre, 
	movies.duration

FROM movies 

JOIN movie_genres 

ON movies.name = movie_genres.movie_name

ORDER BY movies.duration DESC'''

cursor.execute(query)

record = cursor.fetchone()

print("\nSECOND QUERY")
print(f"|name{' ' * 46}|genre{' ' * 15}|duration|")
print('|' + '-' * 50 + '|'+ '-' * 20 + '|' + '-' * 8 + '|')
while record:
	print(f"|{record[0]:50s}|{record[1]:20s}|{record[2]:8d}|")
	record = cursor.fetchone()

#THIRD QUERY
query = '''
SELECT movies.release_year AS year, 
		COUNT(movies.name) AS amount, 
		movie_country.movie_country AS country

FROM movies

JOIN movie_country

ON movies.director = movie_country.movie_director

JOIN movie_genres 

ON movies.name = movie_genres.movie_name

GROUP BY movies.release_year, movie_country.movie_country

ORDER BY movies.release_year
'''

cursor.execute(query)

record = cursor.fetchone()

print("\nTHIRD QUERY")
print("|year|amount|country       |")
print('|' + '-' * 4 + '|' + '-' * 6 + '|' + '-' * 14 + '|')
while record:
	print(f"|{record[0]}|{record[1]:6d}|{record[2]:14s}|")
	record = cursor.fetchone()


cursor.close()
connection.close()