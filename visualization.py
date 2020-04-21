import cx_Oracle
import chart_studio
import plotly.graph_objects as go
import chart_studio.plotly as py


username = 'system'
password = 'oracle'
db = 'localhost:49161/xe'

connection = cx_Oracle.connect(username, password, db)
cursor = connection.cursor()
chart_studio.tools.set_credentials_file(username='aleksandrlozko', api_key='7YGIfBAfWctfWWE5TFPc')



query = '''
SELECT COUNT(name) AS amount, 
		rating

FROM movies

GROUP BY rating

HAVING rating IN ('R', 'TV-14', 'TV-MA')

ORDER BY amount
'''

cursor.execute(query)
x = list()
y = list()

for pair in cursor.fetchall():
    x.append(pair[1])
    y.append(pair[0])


fig = go.Figure(data=[go.Bar(x=x, y=y)])
fig.update_layout(xaxis=dict(title='Rating'),
    yaxis=dict(title='Amount of films'))
fig.update_layout(title='Кількість фільмів та шоу по рейтингам: R, TV-14, TV-MA')
py.plot(fig, auto_open=True, filename='bar_chart')


#SECOND
query = '''
SELECT movie_genres.movie_genres AS genres, round(COUNT(name) * 100 / (SELECT SUM(COUNT(movie_genres)) FROM movie_genres GROUP BY movie_genres), 1) AS percentage

FROM movies

JOIN movie_genres 

ON movies.name = movie_genres.movie_name

GROUP BY movie_genres.movie_genres
'''

cursor.execute(query)
x = list()
y = list()

for par in cursor.fetchall():
    x.append(par[0])
    y.append(par[1])

fig = go.Figure(data=[go.Pie(labels=x, values=y)])
fig.update_layout(title='Відсоток кожного жанру відносно загальної кількості')
py.plot(fig, auto_open=True, filename='pie_chart')


#THIRD
query = '''
SELECT release_year AS year, 
		COUNT(name) AS amount

FROM movies

GROUP BY release_year

ORDER BY release_year
'''

cursor.execute(query)
x = list()
y = list()

for par in cursor.fetchall():
    x.append(par[0])
    y.append(par[1])

fig = go.Figure(data=[go.Scatter(x=x, y=y, mode='lines+markers')])
fig.update_layout(title='Динаміка випуску фільмів та шоу по роках')
py.plot(fig, auto_open=True, filename='scatter_plot')
