# Top 250 movies API
An API I made to practice building API's. This API will return basic information of movies in the top 250 chart of IMDb. The data is populated by using a scraper.

## API Endpoints
To get all of the movies:
```
#URL/api/v1/movies
```

To get a single movie:
```
#URL/api/v1/movie/#ID
```

To get a movie or movies with a certain keyword(Actor's name, movie title, etc.)
```
#URL/api/v1/search?query=#KEYWORD
```
For example:
```
#URL/api/v1/search?query=nolan
```
